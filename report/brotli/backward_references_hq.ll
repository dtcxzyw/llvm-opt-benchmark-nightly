Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@BrotliZopfliComputeShortestPath:bb.a
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !53, !noalias !155 ; 2 uses
  %i.kc = zext i16 %i.kb to i32
  %i.kd = zext i32 %i.jy to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !21, !noalias !155
  %i.kg = add i32 %i.kf, %i.kc
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kh
  %.not542 = icmp eq i16 %i.kb, -1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !87, !noalias !155
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kl ; 2 uses
  %i.kn = load i32, ptr %i.it, align 4, !tbaa !88, !noalias !155
  %i.ko = icmp eq i32 %i.kn, -558043680
  br i1 %i.ko, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0.copyload.i187 = load ptr, ptr %i.km, align 1, !noalias !155
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.081.i = phi ptr [ %.0.copyload.i187, %bb.at ], [ %i.km, %bb.as ] ; 2 uses
  br i1 %.not542, label %FindAllCompoundDictionaryMatches.exit, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.au
  %i.kp = zext i32 %i.iz to i64
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph451, %bb.bd
  %.075.i449 = phi i64 [ 0, %.lr.ph451 ], [ %.2.i169, %bb.bd ] ; 5 uses
  %.077.i448 = phi ptr [ %i.ki, %.lr.ph451 ], [ %i.kr, %bb.bd ] ; 2 uses
  %.078.i447 = phi i64 [ %.027.i455, %.lr.ph451 ], [ %.280.i, %bb.bd ] ; 8 uses
  %.082.i446 = phi ptr [ %i.iw, %.lr.ph451 ], [ %.284.i, %bb.bd ] ; 7 uses
  %i.kq = load i32, ptr %.077.i448, align 4, !tbaa !21, !noalias !155 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.077.i448, i64 4
  %i.ks = and i32 %i.kq, 2147483647
  %i.kt = zext nneg i32 %i.ks to i64              ; 4 uses
  %i.ku = add i64 %i.iv, %i.kt
  %i.kv = sub i64 %.neg326, %i.ku                 ; 2 uses
  %i.kw = sub nsw i64 %i.kp, %i.kt
  %i.kx = call i64 @llvm.umin.i64(i64 %i.kw, i64 %i.cx) ; 4 uses
  %i.ky = icmp ugt i64 %i.kv, %i.iq
  br i1 %i.ky, label %bb.bd, label %bb.aw, !llvm.loop !5

bb.aw:                                            ; preds = %bb.av
  %i.kz = add i64 %.078.i447, %i.cy               ; 2 uses
  %i.la = icmp ule i64 %i.kz, %4
  %.not.i167 = icmp ult i64 %.078.i447, %i.kx
  %or.cond.i168 = select i1 %i.la, i1 %.not.i167, i1 false
  br i1 %or.cond.i168, label %bb.ax, label %bb.bd, !llvm.loop !5

bb.ax:                                            ; preds = %bb.aw
  %i.lb = getelementptr inbounds nuw i8, ptr %3, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !22, !alias.scope !155
  %i.ld = getelementptr i8, ptr %.081.i, i64 %.078.i447
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.kt
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !22, !noalias !155
  %.not91.i = icmp eq i8 %i.lc, %i.lf
  br i1 %.not91.i, label %bb.ay, label %bb.bd, !llvm.loop !5

bb.ay:                                            ; preds = %bb.ax
  %i.lg = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.kt ; 4 uses
  %i.lh = icmp ugt i64 %i.kx, 7
  br i1 %i.lh, label %.lr.ph434, label %.lr.ph442.preheader

.preheader331:                                    ; preds = %bb.ba
  %.not.i.i178438 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i178438, label %.critedge.i.i179, label %.lr.ph442.preheader

.lr.ph442.preheader:                              ; preds = %bb.ay, %.preheader331
  %.022.i.i173.lcssa657 = phi i64 [ %i.lr, %.preheader331 ], [ %i.kx, %bb.ay ] ; 2 uses
  %.024.i.i172.lcssa656 = phi ptr [ %i.lp, %.preheader331 ], [ %i.hq, %bb.ay ]
  %.026.i.i171.lcssa655 = phi ptr [ %i.lq, %.preheader331 ], [ %i.lg, %bb.ay ] ; 2 uses
  %scevgep586 = getelementptr i8, ptr %.026.i.i171.lcssa655, i64 %.022.i.i173.lcssa657
  br label %.lr.ph442

.lr.ph434:                                        ; preds = %bb.ay, %bb.ba
  %.022.i.i173432 = phi i64 [ %i.lr, %bb.ba ], [ %i.kx, %bb.ay ]
  %.024.i.i172431 = phi ptr [ %i.lp, %bb.ba ], [ %i.hq, %bb.ay ] ; 2 uses
  %.026.i.i171430 = phi ptr [ %i.lq, %bb.ba ], [ %i.lg, %bb.ay ] ; 3 uses
  %.0.copyload.i92.i = load i64, ptr %.024.i.i172431, align 1, !alias.scope !155 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i171430, align 1, !noalias !155 ; 2 uses
  %.not30.i.i184 = icmp eq i64 %.0.copyload.i92.i, %.0.copyload.i.i
  br i1 %.not30.i.i184, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph434
  %i.li = xor i64 %.0.copyload.i.i, %.0.copyload.i92.i
  %i.lj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.li, i1 true)
  %i.lk = ptrtoint ptr %.026.i.i171430 to i64
  %i.ll = ptrtoint ptr %i.lg to i64
  %i.lm = sub i64 %i.lk, %i.ll
  %i.ln = lshr i64 %i.lj, 3
  %i.lo = add i64 %i.lm, %i.ln
  br label %FindMatchLengthWithLimit.exit.i180

bb.ba:                                            ; preds = %.lr.ph434
  %i.lp = getelementptr inbounds nuw i8, ptr %.024.i.i172431, i64 8 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.026.i.i171430, i64 8 ; 3 uses
  %i.lr = add i64 %.022.i.i173432, -8             ; 4 uses
  %i.ls = icmp ugt i64 %i.lr, 7
  br i1 %i.ls, label %.lr.ph434, label %.preheader331, !llvm.loop !1

.lr.ph442:                                        ; preds = %.lr.ph442.preheader, %bb.bb
  %.123.i.i177441 = phi i64 [ %i.lw, %bb.bb ], [ %.022.i.i173.lcssa657, %.lr.ph442.preheader ]
  %.125.i.i176440 = phi ptr [ %i.lx, %bb.bb ], [ %.024.i.i172.lcssa656, %.lr.ph442.preheader ] ; 2 uses
  %.228.i.i175439 = phi ptr [ %i.ly, %bb.bb ], [ %.026.i.i171.lcssa655, %.lr.ph442.preheader ] ; 3 uses
  %i.lt = load i8, ptr %.228.i.i175439, align 1, !tbaa !22, !noalias !155
  %i.lu = load i8, ptr %.125.i.i176440, align 1, !tbaa !22, !alias.scope !155
  %i.lv = icmp eq i8 %i.lt, %i.lu
  br i1 %i.lv, label %bb.bb, label %.critedge.i.i179

bb.bb:                                            ; preds = %.lr.ph442
  %i.lw = add nsw i64 %.123.i.i177441, -1         ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.125.i.i176440, i64 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.228.i.i175439, i64 1
  %.not.i.i178 = icmp eq i64 %i.lw, 0
  br i1 %.not.i.i178, label %.critedge.i.i179, label %.lr.ph442, !llvm.loop !2

.critedge.i.i179:                                 ; preds = %bb.bb, %.lr.ph442, %.preheader331
  %.228.i.i175.lcssa = phi ptr [ %i.lq, %.preheader331 ], [ %.228.i.i175439, %.lr.ph442 ], [ %scevgep586, %bb.bb ]
  %i.lz = ptrtoint ptr %.228.i.i175.lcssa to i64
  %i.ma = ptrtoint ptr %i.lg to i64
  %i.mb = sub i64 %i.lz, %i.ma
  br label %FindMatchLengthWithLimit.exit.i180

FindMatchLengthWithLimit.exit.i180:               ; preds = %bb.az, %.critedge.i.i179
  %.2.i.i181 = phi i64 [ %i.lo, %bb.az ], [ %i.mb, %.critedge.i.i179 ] ; 3 uses
  %i.mc = icmp ugt i64 %.2.i.i181, %.078.i447
  br i1 %i.mc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %FindMatchLengthWithLimit.exit.i180
  %i.md = getelementptr inbounds nuw i8, ptr %.082.i446, i64 8
  %i.me = trunc i64 %i.kv to i32
  store i32 %i.me, ptr %.082.i446, align 4, !tbaa !71, !noalias !155
  %.tr.i.i182 = trunc i64 %.2.i.i181 to i32
  %i.mf = shl i32 %.tr.i.i182, 5
  %i.mg = getelementptr inbounds nuw i8, ptr %.082.i446, i64 4
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !72, !noalias !155
  %i.mh = add i64 %.075.i449, 1                   ; 2 uses
  %i.mi = icmp eq i64 %i.mh, %i.ix
  br i1 %i.mi, label %FindAllCompoundDictionaryMatches.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %FindMatchLengthWithLimit.exit.i180, %bb.ax, %bb.aw, %bb.av
  %.284.i = phi ptr [ %i.md, %bb.bc ], [ %.082.i446, %bb.av ], [ %.082.i446, %bb.aw ], [ %.082.i446, %bb.ax ], [ %.082.i446, %FindMatchLengthWithLimit.exit.i180 ]
  %.280.i = phi i64 [ %.2.i.i181, %bb.bc ], [ %.078.i447, %bb.av ], [ %.078.i447, %bb.aw ], [ %.078.i447, %bb.ax ], [ %.078.i447, %FindMatchLengthWithLimit.exit.i180 ]
  %.2.i169 = phi i64 [ %i.mh, %bb.bc ], [ %.075.i449, %bb.av ], [ %.075.i449, %bb.aw ], [ %.075.i449, %bb.ax ], [ %.075.i449, %FindMatchLengthWithLimit.exit.i180 ] ; 2 uses
  %i.mj = icmp sgt i32 %i.kq, -1
  br i1 %i.mj, label %bb.av, label %FindAllCompoundDictionaryMatches.exit

FindAllCompoundDictionaryMatches.exit:            ; preds = %bb.bd, %bb.bc, %bb.au
  %.3.i166 = phi i64 [ 0, %bb.au ], [ %i.ix, %bb.bc ], [ %.2.i169, %bb.bd ]
  %i.mk = add i64 %.3.i166, %.0.i150457           ; 7 uses
  switch i64 %i.mk, label %bb.be [
    i64 64, label %LookupAllCompoundDictionaryMatches.exit
    i64 0, label %bb.bf
  ]

bb.be:                                            ; preds = %FindAllCompoundDictionaryMatches.exit
  %i.ml = getelementptr [8 x i8], ptr %i.az, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -4
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !72
  %i.mo = lshr i32 %i.mn, 5
  %i.mp = zext nneg i32 %i.mo to i64
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %FindAllCompoundDictionaryMatches.exit
  %.128.i = phi i64 [ %i.mp, %bb.be ], [ %.027.i455, %FindAllCompoundDictionaryMatches.exit ]
  %i.mq = add nuw i64 %.026.i456, 1               ; 2 uses
  %exitcond587.not = icmp eq i64 %i.mq, %i.ip
  br i1 %exitcond587.not, label %LookupAllCompoundDictionaryMatches.exit, label %bb.as, !llvm.loop !6

LookupAllCompoundDictionaryMatches.exit:          ; preds = %bb.bf, %FindAllCompoundDictionaryMatches.exit
  %i.mr = icmp ne i64 %i.mk, 0
  %i.ms = icmp ne ptr %.8.i, %i.as
  %i.mt = and i1 %i.ms, %i.mr
  br i1 %i.mt, label %.lr.ph.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.bk, %LookupAllCompoundDictionaryMatches.exit
  %.030.lcssa.i = phi ptr [ %i.m, %LookupAllCompoundDictionaryMatches.exit ], [ %.131.i, %bb.bk ] ; 5 uses
  %.027.lcssa.i = phi ptr [ %i.az, %LookupAllCompoundDictionaryMatches.exit ], [ %.128.i239, %bb.bk ] ; 4 uses
  %.024.lcssa.i = phi i64 [ %i.mk, %LookupAllCompoundDictionaryMatches.exit ], [ %.125.i240, %bb.bk ] ; 6 uses
  %.021.lcssa.i = phi ptr [ %i.as, %LookupAllCompoundDictionaryMatches.exit ], [ %.122.i, %bb.bk ] ; 4 uses
  %.0.lcssa.i = phi i64 [ %i.io, %LookupAllCompoundDictionaryMatches.exit ], [ %.1.i241, %bb.bk ] ; 6 uses
  %.021.lcssa.i750 = ptrtoaddr ptr %.021.lcssa.i to i64
  %.not46.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not46.i, label %.preheader.i, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %.preheader36.i
  %.027.lcssa.i757 = ptrtoaddr ptr %.027.lcssa.i to i64
  %.030.lcssa.i756 = ptrtoaddr ptr %.030.lcssa.i to i64
  %min.iters.check760 = icmp ult i64 %.024.lcssa.i, 4
  %i.mu = sub i64 %.027.lcssa.i757, %.030.lcssa.i756
  %diff.check758 = icmp ugt i64 %i.mu, -32
  %or.cond775 = select i1 %min.iters.check760, i1 true, i1 %diff.check758
  br i1 %or.cond775, label %.lr.ph50.i.preheader778, label %vector.ph761

vector.ph761:                                     ; preds = %.lr.ph50.i.preheader
  %n.vec762 = and i64 %.024.lcssa.i, -4           ; 3 uses
  %13 = and i64 %.024.lcssa.i, 3
  %14 = shl i64 %n.vec762, 3                      ; 2 uses
  %15 = getelementptr i8, ptr %.027.lcssa.i, i64 %14
  %16 = getelementptr i8, ptr %.030.lcssa.i, i64 %14 ; 2 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph761
  %index764 = phi i64 [ 0, %vector.ph761 ], [ %index.next769, %vector.body763 ] ; 2 uses
  %i.mv = shl i64 %index764, 3                    ; 2 uses
  %next.gep765 = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mv ; 2 uses
  %next.gep766 = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mv ; 2 uses
  %i.mw = getelementptr i8, ptr %next.gep765, i64 16
  %wide.load767 = load <2 x i64>, ptr %next.gep765, align 4
  %wide.load768 = load <2 x i64>, ptr %i.mw, align 4
  %i.mx = getelementptr i8, ptr %next.gep766, i64 16
  store <2 x i64> %wide.load767, ptr %next.gep766, align 4
  store <2 x i64> %wide.load768, ptr %i.mx, align 4
  %index.next769 = add nuw i64 %index764, 4       ; 2 uses
  %i.my = icmp eq i64 %index.next769, %n.vec762
  br i1 %i.my, label %middle.block770, label %vector.body763, !llvm.loop !119

middle.block770:                                  ; preds = %vector.body763
  %cmp.n771 = icmp eq i64 %.024.lcssa.i, %n.vec762
  br i1 %cmp.n771, label %.preheader.i, label %.lr.ph50.i.preheader778

.lr.ph50.i.preheader778:                          ; preds = %.lr.ph50.i.preheader, %middle.block770
  %.22649.i.ph = phi i64 [ %.024.lcssa.i, %.lr.ph50.i.preheader ], [ %13, %middle.block770 ] ; 4 uses
  %.22948.i.ph = phi ptr [ %.027.lcssa.i, %.lr.ph50.i.preheader ], [ %15, %middle.block770 ] ; 2 uses
  %.23247.i.ph = phi ptr [ %.030.lcssa.i, %.lr.ph50.i.preheader ], [ %16, %middle.block770 ] ; 2 uses
  %i.mz = add i64 %.22649.i.ph, -1
  %xtraiter = and i64 %.22649.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader778, %.lr.ph50.i.prol
  %.22649.i.prol = phi i64 [ %i.na, %.lr.ph50.i.prol ], [ %.22649.i.ph, %.lr.ph50.i.preheader778 ]
  %.22948.i.prol = phi ptr [ %i.nc, %.lr.ph50.i.prol ], [ %.22948.i.ph, %.lr.ph50.i.preheader778 ] ; 2 uses
  %.23247.i.prol = phi ptr [ %i.nb, %.lr.ph50.i.prol ], [ %.23247.i.ph, %.lr.ph50.i.preheader778 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader778 ]
  %i.na = add i64 %.22649.i.prol, -1              ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.23247.i.prol, i64 8 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.22948.i.prol, i64 8 ; 2 uses
  %i.nd = load i64, ptr %.22948.i.prol, align 4
  store i64 %i.nd, ptr %.23247.i.prol, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !120

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader778
  %.lcssa801.unr = phi ptr [ poison, %.lr.ph50.i.preheader778 ], [ %i.nb, %.lr.ph50.i.prol ]
  %.22649.i.unr = phi i64 [ %.22649.i.ph, %.lr.ph50.i.preheader778 ], [ %i.na, %.lr.ph50.i.prol ]
  %.22948.i.unr = phi ptr [ %.22948.i.ph, %.lr.ph50.i.preheader778 ], [ %i.nc, %.lr.ph50.i.prol ]
  %.23247.i.unr = phi ptr [ %.23247.i.ph, %.lr.ph50.i.preheader778 ], [ %i.nb, %.lr.ph50.i.prol ]
  %i.ne = icmp ult i64 %i.mz, 7
  br i1 %i.ne, label %.preheader.i, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %LookupAllCompoundDictionaryMatches.exit, %bb.bk
  %.041.i = phi i64 [ %.1.i241, %bb.bk ], [ %i.io, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02140.i = phi ptr [ %.122.i, %bb.bk ], [ %i.as, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.02439.i = phi i64 [ %.125.i240, %bb.bk ], [ %i.mk, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02738.i = phi ptr [ %.128.i239, %bb.bk ], [ %i.az, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.03037.i = phi ptr [ %.131.i, %bb.bk ], [ %i.m, %LookupAllCompoundDictionaryMatches.exit ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.02738.i, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !72
  %i.nh = lshr i32 %i.ng, 5                       ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.02140.i, i64 4
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !72
  %i.nk = lshr i32 %i.nj, 5                       ; 2 uses
  %i.nl = icmp samesign ult i32 %i.nh, %i.nk
  br i1 %i.nl, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i
  %i.nm = icmp eq i32 %i.nh, %i.nk
  br i1 %i.nm, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.nn = load i32, ptr %.02738.i, align 4, !tbaa !71
  %i.no = load i32, ptr %.02140.i, align 4, !tbaa !71
  %i.np = icmp ult i32 %i.nn, %i.no
  br i1 %i.np, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i
  %i.nq = getelementptr inbounds nuw i8, ptr %.02738.i, i64 8
  %i.nr = load i64, ptr %.02738.i, align 4
  store i64 %i.nr, ptr %.03037.i, align 4
  %i.ns = add i64 %.02439.i, -1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %i.nt = getelementptr inbounds nuw i8, ptr %.02140.i, i64 8
  %i.nu = load i64, ptr %.02140.i, align 4
  store i64 %i.nu, ptr %.03037.i, align 4
  %i.nv = add i64 %.041.i, -1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.128.i239 = phi ptr [ %i.nq, %bb.bi ], [ %.02738.i, %bb.bj ] ; 2 uses
  %.125.i240 = phi i64 [ %i.ns, %bb.bi ], [ %.02439.i, %bb.bj ] ; 3 uses
  %.122.i = phi ptr [ %.02140.i, %bb.bi ], [ %i.nt, %bb.bj ] ; 2 uses
  %.1.i241 = phi i64 [ %.041.i, %bb.bi ], [ %i.nv, %bb.bj ] ; 3 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03037.i, i64 8 ; 2 uses
  %i.nw = icmp ne i64 %.125.i240, 0
  %i.nx = icmp ne i64 %.1.i241, 0
  %i.ny = select i1 %i.nw, i1 %i.nx, i1 false
  br i1 %i.ny, label %.lr.ph.i, label %.preheader36.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block770, %.preheader36.i
  %.232.lcssa.i = phi ptr [ %.030.lcssa.i, %.preheader36.i ], [ %16, %middle.block770 ], [ %.lcssa801.unr, %.lr.ph50.i.prol.loopexit ], [ %i.pg, %.lr.ph50.i ] ; 4 uses
  %.not3552.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not3552.i, label %MergeMatches.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %.232.lcssa.i749 = ptrtoaddr ptr %.232.lcssa.i to i64
  %min.iters.check = icmp ult i64 %.0.lcssa.i, 4
  %i.nz = sub i64 %.021.lcssa.i750, %.232.lcssa.i749
  %diff.check = icmp ugt i64 %i.nz, -32
  %or.cond776 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond776, label %.lr.ph56.i.preheader777, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.i.preheader
  %n.vec = and i64 %.0.lcssa.i, -4                ; 3 uses
  %17 = and i64 %.0.lcssa.i, 3
  %18 = shl i64 %n.vec, 3                         ; 2 uses
  %19 = getelementptr i8, ptr %.021.lcssa.i, i64 %18
  %20 = getelementptr i8, ptr %.232.lcssa.i, i64 %18
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.021.lcssa.i, i64 %i.oa ; 2 uses
  %next.gep751 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.oa ; 2 uses
  %i.ob = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load752 = load <2 x i64>, ptr %i.ob, align 4
  %i.oc = getelementptr i8, ptr %next.gep751, i64 16
  store <2 x i64> %wide.load, ptr %next.gep751, align 4
  store <2 x i64> %wide.load752, ptr %i.oc, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.od = icmp eq i64 %index.next, %n.vec
  br i1 %i.od, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.lcssa.i, %n.vec
  br i1 %cmp.n, label %MergeMatches.exit, label %.lr.ph56.i.preheader777

.lr.ph56.i.preheader777:                          ; preds = %.lr.ph56.i.preheader, %middle.block
  %.255.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph56.i.preheader ], [ %17, %middle.block ] ; 4 uses
  %.22354.i.ph = phi ptr [ %.021.lcssa.i, %.lr.ph56.i.preheader ], [ %19, %middle.block ] ; 2 uses
  %.353.i.ph = phi ptr [ %.232.lcssa.i, %.lr.ph56.i.preheader ], [ %20, %middle.block ] ; 2 uses
  %i.oe = add i64 %.255.i.ph, -1
  %xtraiter822 = and i64 %.255.i.ph, 7            ; 2 uses
  %lcmp.mod823.not = icmp eq i64 %xtraiter822, 0
  br i1 %lcmp.mod823.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader777, %.lr.ph56.i.prol
  %.255.i.prol = phi i64 [ %i.of, %.lr.ph56.i.prol ], [ %.255.i.ph, %.lr.ph56.i.preheader777 ]
  %.22354.i.prol = phi ptr [ %i.oh, %.lr.ph56.i.prol ], [ %.22354.i.ph, %.lr.ph56.i.preheader777 ] ; 2 uses
  %.353.i.prol = phi ptr [ %i.og, %.lr.ph56.i.prol ], [ %.353.i.ph, %.lr.ph56.i.preheader777 ] ; 2 uses
  %prol.iter824 = phi i64 [ %prol.iter824.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader777 ]
  %i.of = add i64 %.255.i.prol, -1                ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.353.i.prol, i64 8 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.22354.i.prol, i64 8 ; 2 uses
  %i.oi = load i64, ptr %.22354.i.prol, align 4
  store i64 %i.oi, ptr %.353.i.prol, align 4
  %prol.iter824.next = add i64 %prol.iter824, 1   ; 2 uses
  %prol.iter824.cmp.not = icmp eq i64 %prol.iter824.next, %xtraiter822
  br i1 %prol.iter824.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !122

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader777
  %.255.i.unr = phi i64 [ %.255.i.ph, %.lr.ph56.i.preheader777 ], [ %i.of, %.lr.ph56.i.prol ]
  %.22354.i.unr = phi ptr [ %.22354.i.ph, %.lr.ph56.i.preheader777 ], [ %i.oh, %.lr.ph56.i.prol ]
  %.353.i.unr = phi ptr [ %.353.i.ph, %.lr.ph56.i.preheader777 ], [ %i.og, %.lr.ph56.i.prol ]
  %i.oj = icmp ult i64 %i.oe, 7
  br i1 %i.oj, label %MergeMatches.exit, label %.lr.ph56.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %.22649.i = phi i64 [ %i.pf, %.lr.ph50.i ], [ %.22649.i.unr, %.lr.ph50.i.prol.loopexit ]
  %.22948.i = phi ptr [ %i.ph, %.lr.ph50.i ], [ %.22948.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.23247.i = phi ptr [ %i.pg, %.lr.ph50.i ], [ %.23247.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.23247.i, i64 8
  %i.ol = getelementptr inbounds nuw i8, ptr %.22948.i, i64 8
  %i.om = load i64, ptr %.22948.i, align 4
  store i64 %i.om, ptr %.23247.i, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %.23247.i, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %.22948.i, i64 16
  %i.op = load i64, ptr %i.ol, align 4
  store i64 %i.op, ptr %i.ok, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.23247.i, i64 24
  %i.or = getelementptr inbounds nuw i8, ptr %.22948.i, i64 24
  %i.os = load i64, ptr %i.oo, align 4
  store i64 %i.os, ptr %i.on, align 4
  %i.ot = getelementptr inbounds nuw i8, ptr %.23247.i, i64 32
  %i.ou = getelementptr inbounds nuw i8, ptr %.22948.i, i64 32
  %i.ov = load i64, ptr %i.or, align 4
  store i64 %i.ov, ptr %i.oq, align 4
  %i.ow = getelementptr inbounds nuw i8, ptr %.23247.i, i64 40
  %i.ox = getelementptr inbounds nuw i8, ptr %.22948.i, i64 40
  %i.oy = load i64, ptr %i.ou, align 4
  store i64 %i.oy, ptr %i.ot, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %.23247.i, i64 48
  %i.pa = getelementptr inbounds nuw i8, ptr %.22948.i, i64 48
  %i.pb = load i64, ptr %i.ox, align 4
  store i64 %i.pb, ptr %i.ow, align 4
  %i.pc = getelementptr inbounds nuw i8, ptr %.23247.i, i64 56
  %i.pd = getelementptr inbounds nuw i8, ptr %.22948.i, i64 56
  %i.pe = load i64, ptr %i.pa, align 4
  store i64 %i.pe, ptr %i.oz, align 4
  %i.pf = add i64 %.22649.i, -8                   ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.23247.i, i64 64 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.22948.i, i64 64
  %i.pi = load i64, ptr %i.pd, align 4
  store i64 %i.pi, ptr %i.pc, align 4
  %.not.i238.7 = icmp eq i64 %i.pf, 0
  br i1 %.not.i238.7, label %.preheader.i, label %.lr.ph50.i, !llvm.loop !123

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.255.i = phi i64 [ %i.qe, %.lr.ph56.i ], [ %.255.i.unr, %.lr.ph56.i.prol.loopexit ]
  %.22354.i = phi ptr [ %i.qg, %.lr.ph56.i ], [ %.22354.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %.353.i = phi ptr [ %i.qf, %.lr.ph56.i ], [ %.353.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.353.i, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %.22354.i, i64 8
  %i.pl = load i64, ptr %.22354.i, align 4
  store i64 %i.pl, ptr %.353.i, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.353.i, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %.22354.i, i64 16
  %i.po = load i64, ptr %i.pk, align 4
  store i64 %i.po, ptr %i.pj, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %.353.i, i64 24
  %i.pq = getelementptr inbounds nuw i8, ptr %.22354.i, i64 24
  %i.pr = load i64, ptr %i.pn, align 4
  store i64 %i.pr, ptr %i.pm, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %.353.i, i64 32
  %i.pt = getelementptr inbounds nuw i8, ptr %.22354.i, i64 32
  %i.pu = load i64, ptr %i.pq, align 4
  store i64 %i.pu, ptr %i.pp, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.353.i, i64 40
  %i.pw = getelementptr inbounds nuw i8, ptr %.22354.i, i64 40
  %i.px = load i64, ptr %i.pt, align 4
  store i64 %i.px, ptr %i.ps, align 4
  %i.py = getelementptr inbounds nuw i8, ptr %.353.i, i64 48
  %i.pz = getelementptr inbounds nuw i8, ptr %.22354.i, i64 48
  %i.qa = load i64, ptr %i.pw, align 4
  store i64 %i.qa, ptr %i.pv, align 4
  %i.qb = getelementptr inbounds nuw i8, ptr %.353.i, i64 56
  %i.qc = getelementptr inbounds nuw i8, ptr %.22354.i, i64 56
  %i.qd = load i64, ptr %i.pz, align 4
  store i64 %i.qd, ptr %i.py, align 4
  %i.qe = add i64 %.255.i, -8                     ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.353.i, i64 64
  %i.qg = getelementptr inbounds nuw i8, ptr %.22354.i, i64 64
  %i.qh = load i64, ptr %i.qc, align 4
  store i64 %i.qh, ptr %i.qb, align 4
  %.not35.i.7 = icmp eq i64 %i.qe, 0
  br i1 %.not35.i.7, label %MergeMatches.exit, label %.lr.ph56.i, !llvm.loop !124

MergeMatches.exit:                                ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %middle.block, %.preheader.i
  %i.qi = add i64 %i.mk, %i.io
  br label %bb.bl

bb.bl:                                            ; preds = %MergeMatches.exit, %FindAllMatchesH10.exit
  %.0134 = phi i64 [ %i.qi, %MergeMatches.exit ], [ %i.io, %FindAllMatchesH10.exit ] ; 3 uses
  %.not147 = icmp eq i64 %.0134, 0
  br i1 %.not147, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qj = getelementptr [8 x i8], ptr %i.m, i64 %.0134 ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 -4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !72
  %i.qm = lshr i32 %i.ql, 5
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = icmp samesign ult i64 %i.l, %i.qn
  br i1 %i.qo, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qp = getelementptr i8, ptr %i.qj, i64 -8
  %i.qq = load i64, ptr %i.qp, align 4
  store i64 %i.qq, ptr %i.m, align 4
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.1 = phi i64 [ 1, %bb.bn ], [ %.0134, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %i.qr = call fastcc i64 @UpdateNodes(i64 noundef %1, i64 noundef %2, i64 noundef %.0137539, ptr noundef %3, i64 noundef %4, ptr noundef %6, i64 noundef %i.h, ptr noundef %7, i64 noundef %.1, ptr noundef %i.m, ptr noundef nonnull %i.u, ptr noundef %12, ptr noundef nonnull %9) ; 2 uses
  %i.qs = icmp ult i64 %i.qr, 16384
  %spec.store.select = select i1 %i.qs, i64 0, i64 %i.qr ; 3 uses
  %i.qt = icmp eq i64 %.1, 1
  br i1 %i.qt, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.qu = load i32, ptr %i.bc, align 4, !tbaa !72
  %i.qv = lshr i32 %i.qu, 5
  %i.qw = zext nneg i32 %i.qv to i64              ; 2 uses
  %i.qx = icmp samesign ult i64 %i.l, %i.qw
  br i1 %i.qx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qy = call i64 @llvm.umax.i64(i64 %i.qw, i64 %spec.store.select)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %.0135 = phi i64 [ %i.qy, %bb.bq ], [ %spec.store.select, %bb.bp ], [ %spec.store.select, %bb.bo ] ; 3 uses
  %i.qz = icmp ugt i64 %.0135, 1
  br i1 %i.qz, label %bb.bs, label %bb.df

bb.bs:                                            ; preds = %bb.br
  %i.ra = add i64 %i.bw, 1                        ; 3 uses
  %i.rb = add i64 %.0135, %i.bw
  %i.rc = call i64 @llvm.umin.i64(i64 %i.rb, i64 %i.o) ; 4 uses
  %i.rd = add i64 %i.bw, 64
  %.not.i152 = icmp ugt i64 %i.rd, %i.rc
  %i.re = add i64 %i.rc, -63
  %spec.select.i153 = select i1 %.not.i152, i64 %i.ra, i64 %i.re ; 5 uses
  %i.rf = add i64 %i.bw, 513
  %.not22.i = icmp ule i64 %i.rf, %spec.select.i153
  %i.rg = icmp ult i64 %i.ra, %spec.select.i153
  %or.cond = and i1 %.not22.i, %i.rg
  br i1 %or.cond, label %.lr.ph492, label %.loopexit336

.lr.ph492:                                        ; preds = %bb.bs
  %i.rh = load i64, ptr %i.aq, align 8, !tbaa !77, !alias.scope !156, !noalias !157 ; 4 uses
  %i.ri = add i64 %i.rh, -15
  %i.rj = load ptr, ptr %i.at, align 8, !tbaa !75, !alias.scope !158, !noalias !159
  %i.rk = load ptr, ptr %i.au, align 8, !tbaa !76, !alias.scope !158, !noalias !159 ; 7 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph492, %StoreH10.exit
  %.0.i154490 = phi i64 [ %i.ra, %.lr.ph492 ], [ %i.tx, %StoreH10.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.rl = and i64 %.0.i154490, %4
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 %i.rl ; 3 uses
  %.val235 = load i32, ptr %i.rm, align 1
  %i.rn = mul i32 %.val235, 506832829
  %i.ro = lshr i32 %i.rn, 15
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.rp ; 2 uses
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !21, !noalias !162 ; 2 uses
  %i.rs = and i64 %i.rh, %.0.i154490
  %i.rt = shl i64 %i.rs, 1                        ; 3 uses
  %i.ru = or disjoint i64 %i.rt, 1                ; 2 uses
  %i.rv = trunc i64 %.0.i154490 to i32
end_hunk_0
begin_hunk_1_@UpdateNodes:bb.a
  %i.gl = trunc i64 %i.gk to i32
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph344, %bb.al
  %.0205343 = phi i64 [ %.0205339, %.lr.ph344 ], [ %.0205, %bb.al ] ; 10 uses
  %.1214342 = phi i64 [ %.0213348, %.lr.ph344 ], [ %.0205343, %bb.al ] ; 2 uses
  %.2219341 = phi i64 [ %.1218347, %.lr.ph344 ], [ %.3, %bb.al ] ; 2 uses
  %i.gm = icmp ult i64 %.0205343, 10
  br i1 %i.gm, label %GetCopyLengthCode.exit241, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = icmp ult i64 %.0205343, 134
  br i1 %i.gn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.go = add nsw i64 %.1214342, -5               ; 2 uses
  %i.gp = trunc nuw nsw i64 %i.go to i32
  %i.gq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gp, i1 true)
  %i.gr = sub nsw i32 30, %i.gq                   ; 2 uses
  %i.gs = shl nuw nsw i32 %i.gr, 1
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = zext nneg i32 %i.gr to i64
  %i.gv = lshr i64 %i.go, %i.gu
  %i.gw = add nuw nsw i64 %i.gv, %i.gt
  br label %GetCopyLengthCode.exit241

bb.ah:                                            ; preds = %bb.af
  %i.gx = icmp ult i64 %.0205343, 2118
  br i1 %i.gx, label %bb.ai, label %GetCopyLengthCode.exit241.thread

bb.ai:                                            ; preds = %bb.ah
  %i.gy = trunc i64 %.1214342 to i32
  %i.gz = add i32 %i.gy, -69
  %i.ha = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.gz, i1 true)
  %i.hb = trunc nuw nsw i32 %i.ha to i16
  %i.hc = sub nuw nsw i16 43, %i.hb
  br label %GetCopyLengthCode.exit241.thread

GetCopyLengthCode.exit241:                        ; preds = %bb.ae, %bb.ag
  %.0205343.sink = phi i64 [ %i.gw, %bb.ag ], [ %.0205343, %bb.ae ]
  %.sink439 = phi i16 [ 4, %bb.ag ], [ -2, %bb.ae ]
  %i.hd = trunc nuw nsw i64 %.0205343.sink to i16
  %i.he = add nsw i16 %.sink439, %i.hd            ; 4 uses
  %i.hf = icmp ult i16 %i.he, 16
  %or.cond5.i = and i1 %or.cond.i, %i.hf
  br i1 %or.cond5.i, label %bb.aj, label %GetCopyLengthCode.exit241.thread

bb.aj:                                            ; preds = %GetCopyLengthCode.exit241
  %i.hg = shl nuw nsw i16 %i.he, 3
  %i.hh = and i16 %i.hg, 64
  br label %CombineLengthCodes.exit

GetCopyLengthCode.exit241.thread:                 ; preds = %bb.ah, %bb.ai, %GetCopyLengthCode.exit241
  %.0.i240285 = phi i16 [ %i.he, %GetCopyLengthCode.exit241 ], [ 23, %bb.ah ], [ %i.hc, %bb.ai ] ; 2 uses
  %i.hi = lshr i16 %.0.i240285, 3
  %narrow21.i244 = add nuw nsw i16 %i.hi, %narrow.i243
  %i.hj = zext nneg i16 %narrow21.i244 to i32     ; 2 uses
  %i.hk = shl nuw nsw i32 %i.hj, 1
  %i.hl = shl nuw nsw i32 %i.hj, 6
  %i.hm = add nuw nsw i32 %i.hl, 64
  %i.hn = lshr i32 5377344, %i.hk
  %i.ho = and i32 %i.hn, 192
  %i.hp = add nuw nsw i32 %i.hm, %i.ho
  %i.hq = trunc i32 %i.hp to i16
  br label %CombineLengthCodes.exit

CombineLengthCodes.exit:                          ; preds = %bb.aj, %GetCopyLengthCode.exit241.thread
  %.0.i240286 = phi i16 [ %i.he, %bb.aj ], [ %.0.i240285, %GetCopyLengthCode.exit241.thread ] ; 2 uses
  %.pn.i = phi i16 [ %i.hh, %bb.aj ], [ %i.hq, %GetCopyLengthCode.exit241.thread ] ; 2 uses
  %i.hr = and i16 %.0.i240286, 7
  %i.hs = or disjoint i16 %i.hr, %i.cz
  %.0.i245 = or disjoint i16 %i.hs, %.pn.i
  %i.ht = icmp ult i16 %.pn.i, 128
  %i.hu = select i1 %i.ht, float %i.cu, float %i.gg
  %i.hv = zext i16 %.0.i240286 to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !21
  %i.hy = uitofp i32 %i.hx to float
  %i.hz = fadd float %i.hu, %i.hy
  %i.ia = zext i16 %.0.i245 to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !92
  %i.id = fadd float %i.ic, %i.hz                 ; 2 uses
  %i.ie = getelementptr [16 x i8], ptr %i.bc, i64 %.0205343 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !22
  %i.ih = fcmp olt float %i.id, %i.ig
  br i1 %i.ih, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %CombineLengthCodes.exit
  %i.ii = trunc i64 %.0205343 to i32
  %i.ij = or i32 %i.ii, 301989888
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !45
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store i32 %i.dh, ptr %i.ik, align 4, !tbaa !48
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i32 %i.gl, ptr %i.il, align 4, !tbaa !46
  store float %i.id, ptr %i.if, align 4, !tbaa !22
  %i.im = tail call i64 @llvm.umax.i64(i64 %.2219341, i64 %.0205343)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %CombineLengthCodes.exit
  %.3 = phi i64 [ %i.im, %bb.ak ], [ %.2219341, %CombineLengthCodes.exit ] ; 2 uses
  %.0205 = add i64 %.0205343, 1                   ; 2 uses
  %.not236 = icmp ugt i64 %.0205, %.1210
  br i1 %.not236, label %.loopexit, label %bb.ae, !llvm.loop !179

.loopexit:                                        ; preds = %bb.al, %FindMatchLengthWithLimit.exit259, %bb.p, %bb.m, %bb.o, %bb.v, %bb.q, %bb.y, %bb.z
  %.4.ph = phi i64 [ %.1218347, %bb.z ], [ %.1218347, %bb.y ], [ %.1218347, %bb.q ], [ %.1218347, %bb.p ], [ %.1218347, %bb.v ], [ %.1218347, %bb.o ], [ %.1218347, %bb.m ], [ %.1218347, %FindMatchLengthWithLimit.exit259 ], [ %.3, %bb.al ] ; 2 uses
  %.2215.ph = phi i64 [ %.0213348, %bb.z ], [ %.0213348, %bb.y ], [ %.0213348, %bb.q ], [ %.0213348, %bb.p ], [ %.0213348, %bb.v ], [ %.0213348, %bb.o ], [ %.0213348, %bb.m ], [ %.0213348, %FindMatchLengthWithLimit.exit259 ], [ %.0205343, %bb.al ] ; 2 uses
  %i.in = add nuw nsw i64 %.0211349, 1
  %i.io = icmp samesign ult i64 %.0211349, 15
  %i.ip = icmp ult i64 %.2215.ph, %i.h
  %i.iq = and i1 %i.io, %i.ip
  br i1 %i.iq, label %bb.l, label %FindMatchLengthWithLimit.exit, !llvm.loop !180

FindMatchLengthWithLimit.exit:                    ; preds = %.loopexit, %bb.l, %GetInsertLengthCode.exit
  %.1218.lcssa = phi i64 [ %.0217365, %GetInsertLengthCode.exit ], [ %.1218347, %bb.l ], [ %.4.ph, %.loopexit ] ; 2 uses
  %i.ir = icmp samesign ugt i64 %.0216366, 1
  %brmerge = or i1 %i.ir, %.not368
  br i1 %brmerge, label %.loopexit303, label %.lr.ph363

.lr.ph363:                                        ; preds = %FindMatchLengthWithLimit.exit
  %i.is = lshr i16 %.0.i, 3
  %narrow.i = mul nuw nsw i16 %i.is, 3
  %i.it = shl nuw nsw i16 %.0.i, 3
  %i.iu = and i16 %i.it, 56
  %i.iv = trunc i64 %i.bl to i32
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph363, %._crit_edge
  %.0362 = phi i64 [ %.017.lcssa.i, %.lr.ph363 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.1212361 = phi i64 [ 0, %.lr.ph363 ], [ %i.mt, %._crit_edge ] ; 2 uses
  %.6360 = phi i64 [ %.1218.lcssa, %.lr.ph363 ], [ %.7.lcssa, %._crit_edge ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.1212361
  %i.ix = load i64, ptr %i.iw, align 4            ; 5 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ix to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.ix, 32
  %i.iy = and i64 %i.ix, 4294967295               ; 3 uses
  %i.iz = icmp ult i64 %i.aw, %i.iy               ; 2 uses
  %i.ja = add nuw nsw i64 %i.iy, 15               ; 2 uses
  %i.jb = load i32, ptr %i.bd, align 4, !tbaa !185
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = add nuw nsw i64 %i.jc, 16               ; 2 uses
  %i.je = icmp samesign ult i64 %i.ja, %i.jd
  br i1 %i.je, label %PrefixEncodeCopyDistance.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = load i32, ptr %i.be, align 8, !tbaa !186 ; 2 uses
  %i.jg = zext i32 %i.jf to i64                   ; 3 uses
  %i.jh = shl nuw i64 4, %i.jg
  %i.ji = xor i64 %i.jc, -1
  %i.jj = add nsw i64 %i.iy, %i.ji
  %i.jk = add i64 %i.jj, %i.jh                    ; 3 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jl, i1 true)
  %i.jn = sub nsw i32 30, %i.jm
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.jf
  %i.jp = xor i32 %notmask.i, -1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = and i64 %i.jk, %i.jq
  %i.js = lshr i64 %i.jk, %i.jo
  %i.jt = sub nsw i64 %i.jo, %i.jg                ; 2 uses
  %i.ju = shl nsw i64 %i.jt, 10
  %i.jv = shl nsw i64 %i.jt, 1
  %i.jw = or i64 %i.js, -2
  %i.jx = add nsw i64 %i.jv, %i.jw
  %i.jy = shl i64 %i.jx, %i.jg
  %i.jz = add nuw nsw i64 %i.jr, %i.jd
  %i.ka = add i64 %i.jz, %i.jy
  %i.kb = or i64 %i.ka, %i.ju
  br label %PrefixEncodeCopyDistance.exit

PrefixEncodeCopyDistance.exit:                    ; preds = %bb.am, %bb.an
  %.0269.in = phi i64 [ %i.kb, %bb.an ], [ %i.ja, %bb.am ] ; 2 uses
  %.0269 = trunc i64 %.0269.in to i32
  %i.kc = lshr i32 %.0269, 10
  %i.kd = and i32 %i.kc, 63
  %i.ke = uitofp nneg i32 %i.kd to float
  %i.kf = fadd float %i.cu, %i.ke
  %i.kg = and i64 %.0269.in, 1023
  %i.kh = load ptr, ptr %i.bb, align 8, !tbaa !63
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kg
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !92
  %i.kk = fadd float %i.kj, %i.kf
  %i.kl = lshr i64 %i.ix, 37                      ; 7 uses
  %i.km = icmp ult i64 %.0362, %i.kl
  %i.kn = icmp samesign ugt i64 %i.kl, %i.l
  %or.cond = select i1 %i.iz, i1 true, i1 %i.kn
  %or.cond238 = select i1 %i.km, i1 %or.cond, i1 false
  %.1 = select i1 %or.cond238, i64 %i.kl, i64 %.0362 ; 3 uses
  %.not237355 = icmp ugt i64 %.1, %i.kl
  br i1 %.not237355, label %._crit_edge, label %BackwardMatchLengthCode.exit.lr.ph

BackwardMatchLengthCode.exit.lr.ph:               ; preds = %PrefixEncodeCopyDistance.exit
  %i.ko = and i64 %i.ix, 133143986176
  %.not.i263 = icmp eq i64 %i.ko, 0
  %i.kp = and i64 %.sroa.4.0.extract.shift, 31
  %spec.select = select i1 %.not.i263, i64 %i.kl, i64 %i.kp
  %13 = add nuw nsw i64 %i.kl, 1
  br label %BackwardMatchLengthCode.exit

BackwardMatchLengthCode.exit:                     ; preds = %BackwardMatchLengthCode.exit.lr.ph, %bb.au
  %.2357 = phi i64 [ %.1, %BackwardMatchLengthCode.exit.lr.ph ], [ %i.ms, %bb.au ] ; 7 uses
  %.7356 = phi i64 [ %.6360, %BackwardMatchLengthCode.exit.lr.ph ], [ %.8, %bb.au ] ; 2 uses
  %i.kq = select i1 %i.iz, i64 %spec.select, i64 %.2357 ; 7 uses
  %i.kr = icmp ult i64 %i.kq, 10
  br i1 %i.kr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %BackwardMatchLengthCode.exit
  %i.ks = trunc nuw nsw i64 %i.kq to i16
  %i.kt = add nsw i16 %i.ks, -2
  br label %GetCopyLengthCode.exit

bb.ap:                                            ; preds = %BackwardMatchLengthCode.exit
  %i.ku = icmp ult i64 %i.kq, 134
  br i1 %i.ku, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.kv = add nsw i64 %i.kq, -6                   ; 2 uses
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.kw, i1 true)
  %i.ky = sub nuw nsw i32 30, %i.kx               ; 2 uses
  %i.kz = shl nuw nsw i32 %i.ky, 1
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = zext nneg i32 %i.ky to i64
  %i.lc = lshr i64 %i.kv, %i.lb
  %i.ld = add nuw nsw i64 %i.lc, %i.la
  %i.le = trunc nuw nsw i64 %i.ld to i16
  %i.lf = add nuw nsw i16 %i.le, 4
  br label %GetCopyLengthCode.exit

bb.ar:                                            ; preds = %bb.ap
  %i.lg = icmp ult i64 %i.kq, 2118
  br i1 %i.lg, label %bb.as, label %GetCopyLengthCode.exit

bb.as:                                            ; preds = %bb.ar
  %i.lh = trunc nuw nsw i64 %i.kq to i32
  %i.li = add nsw i32 %i.lh, -70
  %i.lj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.li, i1 true)
  %i.lk = trunc nuw nsw i32 %i.lj to i16
  %i.ll = sub nuw nsw i16 43, %i.lk
  br label %GetCopyLengthCode.exit

GetCopyLengthCode.exit:                           ; preds = %bb.ao, %bb.aq, %bb.ar, %bb.as
  %.0.i239 = phi i16 [ %i.kt, %bb.ao ], [ %i.lf, %bb.aq ], [ %i.ll, %bb.as ], [ 23, %bb.ar ] ; 3 uses
  %i.lm = lshr i16 %.0.i239, 3
  %narrow21.i = add nuw nsw i16 %i.lm, %narrow.i
  %i.ln = zext nneg i16 %narrow21.i to i32        ; 2 uses
  %i.lo = shl nuw nsw i32 %i.ln, 1
  %i.lp = shl nuw nsw i32 %i.ln, 6
  %i.lq = add nuw nsw i32 %i.lp, 64
  %i.lr = lshr i32 5377344, %i.lo
  %i.ls = and i32 %i.lr, 192
  %i.lt = add nuw nsw i32 %i.lq, %i.ls
  %i.lu = trunc i32 %i.lt to i16
  %i.lv = and i16 %.0.i239, 7
  %i.lw = or disjoint i16 %i.lv, %i.iu
  %.0.i242 = or disjoint i16 %i.lw, %i.lu
  %i.lx = zext i16 %.0.i239 to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr @kBrotliCopyExtra, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !21
  %i.ma = uitofp i32 %i.lz to float
  %i.mb = fadd float %i.kk, %i.ma
  %i.mc = zext i16 %.0.i242 to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.mc
  %i.me = load float, ptr %i.md, align 4, !tbaa !92
  %i.mf = fadd float %i.me, %i.mb                 ; 2 uses
  %i.mg = getelementptr [16 x i8], ptr %i.bc, i64 %.2357 ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 12 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !22
  %i.mj = fcmp olt float %i.mf, %i.mi
  br i1 %i.mj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %GetCopyLengthCode.exit
  %i.mk = add i64 %.2357, 9
  %i.ml = sub i64 %i.mk, %i.kq
  %i.mm = shl i64 %i.ml, 25
  %i.mn = or i64 %i.mm, %.2357
  %i.mo = trunc i64 %i.mn to i32
  store i32 %i.mo, ptr %i.mg, align 4, !tbaa !45
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  store i32 %.sroa.0.0.extract.trunc, ptr %i.mp, align 4, !tbaa !48
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store i32 %i.iv, ptr %i.mq, align 4, !tbaa !46
  store float %i.mf, ptr %i.mh, align 4, !tbaa !22
  %i.mr = tail call i64 @llvm.umax.i64(i64 %.7356, i64 %.2357)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %GetCopyLengthCode.exit
  %.8 = phi i64 [ %i.mr, %bb.at ], [ %.7356, %GetCopyLengthCode.exit ] ; 2 uses
  %i.ms = add i64 %.2357, 1
  %exitcond.not = icmp eq i64 %.2357, %i.kl
  br i1 %exitcond.not, label %._crit_edge, label %BackwardMatchLengthCode.exit, !llvm.loop !181

._crit_edge:                                      ; preds = %bb.au, %PrefixEncodeCopyDistance.exit
  %.7.lcssa = phi i64 [ %.6360, %PrefixEncodeCopyDistance.exit ], [ %.8, %bb.au ] ; 2 uses
  %.2.lcssa = phi i64 [ %.1, %PrefixEncodeCopyDistance.exit ], [ %13, %bb.au ]
  %i.mt = add nuw i64 %.1212361, 1                ; 2 uses
  %exitcond383.not = icmp eq i64 %i.mt, %8
  br i1 %exitcond383.not, label %.loopexit303, label %bb.am, !llvm.loop !182

.loopexit303:                                     ; preds = %._crit_edge, %FindMatchLengthWithLimit.exit
  %.9 = phi i64 [ %.1218.lcssa, %FindMatchLengthWithLimit.exit ], [ %.7.lcssa, %._crit_edge ] ; 2 uses
  %i.mu = add nuw nsw i64 %.0216366, 1
  %i.mv = icmp samesign ult i64 %.0216366, 4
  %i.mw = select i1 %i.k, i1 %i.mv, i1 false
  br i1 %i.mw, label %bb.c, label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %.loopexit303, %bb.c
  %.0217.lcssa = phi i64 [ %.9, %.loopexit303 ], [ %.0217365, %bb.c ]
  ret i64 %.0217.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @EvaluateNode(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr nofree noundef captures(none) %7) unnamed_addr #5 {
bb.a:
  %8 = alloca %struct.PosData, align 8            ; 28 uses
  %9 = alloca %struct.PosData, align 8            ; 11 uses
  %i.a = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !22 ; 3 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !45
  %i.e = and i32 %i.d, 33554431                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46   ; 2 uses
  %i.h = and i32 %i.g, 134217727
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48   ; 2 uses
  %i.k = icmp eq i64 %1, 0
  br i1 %i.k, label %ComputeDistanceShortcut.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = zext i32 %i.j to i64                     ; 2 uses
  %i.m = zext nneg i32 %i.e to i64
  %i.n = add nuw nsw i64 %i.l, %i.m
  %i.o = add i64 %1, %0
  %i.p = add i64 %i.o, %3
  %.not.i = icmp ugt i64 %i.n, %i.p
  %i.q = add i64 %3, %2
  %.not23.i = icmp ult i64 %i.q, %i.l
  %or.cond.i = or i1 %.not23.i, %.not.i
  br i1 %or.cond.i, label %bb.d, label %ZopfliNodeDistanceCode.exit.i

ZopfliNodeDistanceCode.exit.i:                    ; preds = %bb.b
  %i.r = lshr i32 %i.g, 27                        ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = add i32 %i.j, 15
  %i.u = add nsw i32 %i.r, -1
  %i.v = select i1 %i.s, i32 %i.t, i32 %i.u
  %.not24.i = icmp eq i32 %i.v, 0
  br i1 %.not24.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %ZopfliNodeDistanceCode.exit.i
  %i.w = trunc i64 %1 to i32
  br label %ComputeDistanceShortcut.exit

bb.d:                                             ; preds = %ZopfliNodeDistanceCode.exit.i, %bb.b
  %narrow.i = add nuw nsw i32 %i.h, %i.e
  %i.x = zext nneg i32 %narrow.i to i64
  %i.y = sub i64 %1, %i.x
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !22
  br label %ComputeDistanceShortcut.exit

ComputeDistanceShortcut.exit:                     ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.ab, %bb.d ], [ %i.w, %bb.c ], [ 0, %bb.a ] ; 3 uses
  store i32 %.0.i, ptr %i.b, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 2832
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %1
  %i.af = load float, ptr %i.ae, align 4, !tbaa !92
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !92
  %i.ah = fsub float %i.af, %i.ag                 ; 2 uses
  %i.ai = fcmp ugt float %i.c, %i.ah
  br i1 %i.ai, label %bb.s, label %bb.e

bb.e:                                             ; preds = %ComputeDistanceShortcut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  store i64 %1, ptr %9, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 28
  store float %i.c, ptr %i.aj, align 4, !tbaa !95
  %i.ak = fsub float %i.c, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 24
  store float %i.ak, ptr %i.al, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not.i20 = icmp eq i32 %.0.i, 0
  br i1 %.not.i20, label %.lr.ph31.preheader.i, label %.lr.ph.i

.lr.ph31.preheader.i:                             ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e
  %.021.lcssa37.i = phi i64 [ 0, %bb.e ], [ 4, %.lr.ph.i ], [ 8, %.lr.ph.i.1 ], [ 12, %.lr.ph.i.2 ] ; 2 uses
  %i.an = getelementptr nuw i8, ptr %9, i64 %.021.lcssa37.i
  %scevgep = getelementptr nuw i8, ptr %i.an, i64 8
  %i.ao = sub nuw nsw i64 16, %.021.lcssa37.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr align 4 %4, i64 %i.ao, i1 false), !tbaa !21
  br label %ComputeDistanceCache.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.022.i = zext i32 %.0.i to i64                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !46
  %i.as = and i32 %i.ar, 134217727
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !45
  %i.au = and i32 %i.at, 33554431
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !48
  store i32 %i.aw, ptr %i.am, align 8, !tbaa !21
  %narrow.i21 = add nuw nsw i32 %i.au, %i.as
  %i.ax = zext nneg i32 %narrow.i21 to i64
  %i.ay = sub nsw i64 %.022.i, %i.ax
  %.pn.i = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.ay
  %.022.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  %.022.in.i = load i32, ptr %.022.in.in.i, align 4, !tbaa !22 ; 2 uses
  %.not = icmp eq i32 %.022.in.i, 0
  br i1 %.not, label %.lr.ph31.preheader.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %.022.i.1 = zext i32 %.022.in.i to i64          ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i.1 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46
  %i.bc = and i32 %i.bb, 134217727
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !45
  %i.be = and i32 %i.bd, 33554431
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !21
  %narrow.i21.1 = add nuw nsw i32 %i.be, %i.bc
  %i.bi = zext nneg i32 %narrow.i21.1 to i64
  %i.bj = sub nsw i64 %.022.i.1, %i.bi
  %.pn.i.1 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.bj
  %.022.in.in.i.1 = getelementptr inbounds nuw i8, ptr %.pn.i.1, i64 12
  %.022.in.i.1 = load i32, ptr %.022.in.in.i.1, align 4, !tbaa !22 ; 2 uses
  %.not27 = icmp eq i32 %.022.in.i.1, 0
  br i1 %.not27, label %.lr.ph31.preheader.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %.022.i.2 = zext i32 %.022.in.i.1 to i64        ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i.2 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46
  %i.bn = and i32 %i.bm, 134217727
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !45
  %i.bp = and i32 %i.bo, 33554431
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !21
  %narrow.i21.2 = add nuw nsw i32 %i.bp, %i.bn
  %i.bt = zext nneg i32 %narrow.i21.2 to i64
  %i.bu = sub nsw i64 %.022.i.2, %i.bt
  %.pn.i.2 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.bu
  %.022.in.in.i.2 = getelementptr inbounds nuw i8, ptr %.pn.i.2, i64 12
  %.022.in.i.2 = load i32, ptr %.022.in.in.i.2, align 4, !tbaa !22 ; 2 uses
  %.not28 = icmp eq i32 %.022.in.i.2, 0
  br i1 %.not28, label %.lr.ph31.preheader.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %.022.i.3 = zext i32 %.022.in.i.2 to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.022.i.3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !21
  br label %ComputeDistanceCache.exit

ComputeDistanceCache.exit:                        ; preds = %.lr.ph.i.3, %.lr.ph31.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !66 ; 3 uses
  %i.cb = add i64 %i.ca, 1                        ; 8 uses
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !66
  %i.cc = and i64 %i.ca, 7                        ; 7 uses
  %i.cd = xor i64 %i.cc, 7                        ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !97
  %i.cf = icmp ugt i64 %i.cb, 1
  br i1 %i.cf, label %.lr.ph.i22, label %StartPosQueuePush.exit

.lr.ph.i22:                                       ; preds = %ComputeDistanceCache.exit
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.cd ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !96
  %i.cj = sub nuw nsw i64 8, %i.cc                ; 2 uses
  %i.ck = and i64 %i.cj, 7
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.ck ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !96
  %i.co = fcmp ogt float %i.ci, %i.cn
  br i1 %i.co, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i22
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 32, i1 false), !tbaa.struct !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, i64 32, i1 false), !tbaa.struct !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !97
end_hunk_1
begin_hunk_2_@BrotliCreateHqZopfliBackwardReferences:bb.a
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !53, !noalias !245 ; 2 uses
  %i.jq = zext i16 %i.jp to i32
  %i.jr = zext i32 %i.jm to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !21, !noalias !245
  %i.ju = add i32 %i.jt, %i.jq
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jv
  %.not636 = icmp eq i16 %i.jp, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !87, !noalias !245
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ih, align 4, !tbaa !88, !noalias !245
  %i.kc = icmp eq i32 %i.kb, -558043680
  br i1 %i.kc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.0.copyload.i268 = load ptr, ptr %i.ka, align 1, !noalias !245
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.081.i = phi ptr [ %.0.copyload.i268, %bb.az ], [ %i.ka, %bb.ay ] ; 2 uses
  br i1 %.not636, label %FindAllCompoundDictionaryMatches.exit, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.ba
  %i.kd = zext i32 %i.in to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph549, %bb.bj
  %.075.i547 = phi i64 [ 0, %.lr.ph549 ], [ %.2.i250, %bb.bj ] ; 5 uses
  %.077.i546 = phi ptr [ %i.jw, %.lr.ph549 ], [ %i.kf, %bb.bj ] ; 2 uses
  %.078.i545 = phi i64 [ %.027.i553, %.lr.ph549 ], [ %.280.i, %bb.bj ] ; 8 uses
  %.082.i544 = phi ptr [ %i.ik, %.lr.ph549 ], [ %.284.i, %bb.bj ] ; 7 uses
  %i.ke = load i32, ptr %.077.i546, align 4, !tbaa !21, !noalias !245 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.077.i546, i64 4
  %i.kg = and i32 %i.ke, 2147483647
  %i.kh = zext nneg i32 %i.kg to i64              ; 4 uses
  %i.ki = add i64 %i.ij, %i.kh
  %i.kj = sub i64 %.neg422, %i.ki                 ; 2 uses
  %i.kk = sub nsw i64 %i.kd, %i.kh
  %i.kl = call i64 @llvm.umin.i64(i64 %i.kk, i64 %i.bc) ; 4 uses
  %i.km = icmp ugt i64 %i.kj, %i.id
  br i1 %i.km, label %bb.bj, label %bb.bc, !llvm.loop !5

bb.bc:                                            ; preds = %bb.bb
  %i.kn = add i64 %.078.i545, %i.ck               ; 2 uses
  %i.ko = icmp ule i64 %i.kn, %4
  %.not.i248 = icmp ult i64 %.078.i545, %i.kl
  %or.cond.i249 = select i1 %i.ko, i1 %.not.i248, i1 false
  br i1 %or.cond.i249, label %bb.bd, label %bb.bj, !llvm.loop !5

bb.bd:                                            ; preds = %bb.bc
  %i.kp = getelementptr inbounds nuw i8, ptr %3, i64 %i.kn
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !22, !alias.scope !245
  %i.kr = getelementptr i8, ptr %.081.i, i64 %.078.i545
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kh
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !22, !noalias !245
  %.not91.i = icmp eq i8 %i.kq, %i.kt
  br i1 %.not91.i, label %bb.be, label %bb.bj, !llvm.loop !5

bb.be:                                            ; preds = %bb.bd
  %i.ku = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.kh ; 4 uses
  %i.kv = icmp ugt i64 %i.kl, 7
  br i1 %i.kv, label %.lr.ph532, label %.lr.ph540.preheader

.preheader427:                                    ; preds = %bb.bg
  %.not.i.i259536 = icmp eq i64 %i.lf, 0
  br i1 %.not.i.i259536, label %.critedge.i.i260, label %.lr.ph540.preheader

.lr.ph540.preheader:                              ; preds = %bb.be, %.preheader427
  %.022.i.i254.lcssa766 = phi i64 [ %i.lf, %.preheader427 ], [ %i.kl, %bb.be ] ; 2 uses
  %.024.i.i253.lcssa765 = phi ptr [ %i.ld, %.preheader427 ], [ %i.hc, %bb.be ]
  %.026.i.i252.lcssa764 = phi ptr [ %i.le, %.preheader427 ], [ %i.ku, %bb.be ] ; 2 uses
  %scevgep682 = getelementptr i8, ptr %.026.i.i252.lcssa764, i64 %.022.i.i254.lcssa766
  br label %.lr.ph540

.lr.ph532:                                        ; preds = %bb.be, %bb.bg
  %.022.i.i254530 = phi i64 [ %i.lf, %bb.bg ], [ %i.kl, %bb.be ]
  %.024.i.i253529 = phi ptr [ %i.ld, %bb.bg ], [ %i.hc, %bb.be ] ; 2 uses
  %.026.i.i252528 = phi ptr [ %i.le, %bb.bg ], [ %i.ku, %bb.be ] ; 3 uses
  %.0.copyload.i92.i = load i64, ptr %.024.i.i253529, align 1, !alias.scope !245 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i252528, align 1, !noalias !245 ; 2 uses
  %.not30.i.i265 = icmp eq i64 %.0.copyload.i92.i, %.0.copyload.i.i
  br i1 %.not30.i.i265, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph532
  %i.kw = xor i64 %.0.copyload.i.i, %.0.copyload.i92.i
  %i.kx = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.kw, i1 true)
  %i.ky = ptrtoint ptr %.026.i.i252528 to i64
  %i.kz = ptrtoint ptr %i.ku to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = lshr i64 %i.kx, 3
  %i.lc = add i64 %i.la, %i.lb
  br label %FindMatchLengthWithLimit.exit.i261

bb.bg:                                            ; preds = %.lr.ph532
  %i.ld = getelementptr inbounds nuw i8, ptr %.024.i.i253529, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.026.i.i252528, i64 8 ; 3 uses
  %i.lf = add i64 %.022.i.i254530, -8             ; 4 uses
  %i.lg = icmp ugt i64 %i.lf, 7
  br i1 %i.lg, label %.lr.ph532, label %.preheader427, !llvm.loop !1

.lr.ph540:                                        ; preds = %.lr.ph540.preheader, %bb.bh
  %.123.i.i258539 = phi i64 [ %i.lk, %bb.bh ], [ %.022.i.i254.lcssa766, %.lr.ph540.preheader ]
  %.125.i.i257538 = phi ptr [ %i.ll, %bb.bh ], [ %.024.i.i253.lcssa765, %.lr.ph540.preheader ] ; 2 uses
  %.228.i.i256537 = phi ptr [ %i.lm, %bb.bh ], [ %.026.i.i252.lcssa764, %.lr.ph540.preheader ] ; 3 uses
  %i.lh = load i8, ptr %.228.i.i256537, align 1, !tbaa !22, !noalias !245
  %i.li = load i8, ptr %.125.i.i257538, align 1, !tbaa !22, !alias.scope !245
  %i.lj = icmp eq i8 %i.lh, %i.li
  br i1 %i.lj, label %bb.bh, label %.critedge.i.i260

bb.bh:                                            ; preds = %.lr.ph540
  %i.lk = add nsw i64 %.123.i.i258539, -1         ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.125.i.i257538, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.228.i.i256537, i64 1
  %.not.i.i259 = icmp eq i64 %i.lk, 0
  br i1 %.not.i.i259, label %.critedge.i.i260, label %.lr.ph540, !llvm.loop !2

.critedge.i.i260:                                 ; preds = %bb.bh, %.lr.ph540, %.preheader427
  %.228.i.i256.lcssa = phi ptr [ %i.le, %.preheader427 ], [ %.228.i.i256537, %.lr.ph540 ], [ %scevgep682, %bb.bh ]
  %i.ln = ptrtoint ptr %.228.i.i256.lcssa to i64
  %i.lo = ptrtoint ptr %i.ku to i64
  %i.lp = sub i64 %i.ln, %i.lo
  br label %FindMatchLengthWithLimit.exit.i261

FindMatchLengthWithLimit.exit.i261:               ; preds = %bb.bf, %.critedge.i.i260
  %.2.i.i262 = phi i64 [ %i.lc, %bb.bf ], [ %i.lp, %.critedge.i.i260 ] ; 3 uses
  %i.lq = icmp ugt i64 %.2.i.i262, %.078.i545
  br i1 %i.lq, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %FindMatchLengthWithLimit.exit.i261
  %i.lr = getelementptr inbounds nuw i8, ptr %.082.i544, i64 8
  %i.ls = trunc i64 %i.kj to i32
  store i32 %i.ls, ptr %.082.i544, align 4, !tbaa !71, !noalias !245
  %.tr.i.i263 = trunc i64 %.2.i.i262 to i32
  %i.lt = shl i32 %.tr.i.i263, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %.082.i544, i64 4
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !72, !noalias !245
  %i.lv = add i64 %.075.i547, 1                   ; 2 uses
  %i.lw = icmp eq i64 %i.lv, %i.il
  br i1 %i.lw, label %FindAllCompoundDictionaryMatches.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %FindMatchLengthWithLimit.exit.i261, %bb.bd, %bb.bc, %bb.bb
  %.284.i = phi ptr [ %i.lr, %bb.bi ], [ %.082.i544, %bb.bb ], [ %.082.i544, %bb.bc ], [ %.082.i544, %bb.bd ], [ %.082.i544, %FindMatchLengthWithLimit.exit.i261 ]
  %.280.i = phi i64 [ %.2.i.i262, %bb.bi ], [ %.078.i545, %bb.bb ], [ %.078.i545, %bb.bc ], [ %.078.i545, %bb.bd ], [ %.078.i545, %FindMatchLengthWithLimit.exit.i261 ]
  %.2.i250 = phi i64 [ %i.lv, %bb.bi ], [ %.075.i547, %bb.bb ], [ %.075.i547, %bb.bc ], [ %.075.i547, %bb.bd ], [ %.075.i547, %FindMatchLengthWithLimit.exit.i261 ] ; 2 uses
  %i.lx = icmp sgt i32 %i.ke, -1
  br i1 %i.lx, label %bb.bb, label %FindAllCompoundDictionaryMatches.exit

FindAllCompoundDictionaryMatches.exit:            ; preds = %bb.bj, %bb.bi, %bb.ba
  %.3.i247 = phi i64 [ 0, %bb.ba ], [ %i.il, %bb.bi ], [ %.2.i250, %bb.bj ]
  %i.ly = add i64 %.3.i247, %.0.i231555           ; 7 uses
  switch i64 %i.ly, label %bb.bk [
    i64 64, label %LookupAllCompoundDictionaryMatches.exit
    i64 0, label %bb.bl
  ]

bb.bk:                                            ; preds = %FindAllCompoundDictionaryMatches.exit
  %i.lz = getelementptr [8 x i8], ptr %i.ie, i64 %i.ly
  %i.ma = getelementptr i8, ptr %i.lz, i64 -4
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !72
  %i.mc = lshr i32 %i.mb, 5
  %i.md = zext nneg i32 %i.mc to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %FindAllCompoundDictionaryMatches.exit
  %.128.i = phi i64 [ %i.md, %bb.bk ], [ %.027.i553, %FindAllCompoundDictionaryMatches.exit ]
  %i.me = add nuw i64 %.026.i554, 1               ; 2 uses
  %exitcond683.not = icmp eq i64 %i.me, %i.ic
  br i1 %exitcond683.not, label %LookupAllCompoundDictionaryMatches.exit, label %bb.ay, !llvm.loop !6

LookupAllCompoundDictionaryMatches.exit:          ; preds = %bb.bl, %FindAllCompoundDictionaryMatches.exit
  %i.mf = icmp ne i64 %i.ly, 0
  %i.mg = icmp ne ptr %.8.i, %i.cj
  %i.mh = and i1 %i.mg, %i.mf
  br i1 %i.mh, label %.lr.ph.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.bq, %LookupAllCompoundDictionaryMatches.exit
  %.030.lcssa.i = phi ptr [ %i.ci, %LookupAllCompoundDictionaryMatches.exit ], [ %.131.i, %bb.bq ] ; 5 uses
  %.027.lcssa.i = phi ptr [ %i.ie, %LookupAllCompoundDictionaryMatches.exit ], [ %.128.i319, %bb.bq ] ; 4 uses
  %.024.lcssa.i = phi i64 [ %i.ly, %LookupAllCompoundDictionaryMatches.exit ], [ %.125.i320, %bb.bq ] ; 6 uses
  %.021.lcssa.i = phi ptr [ %i.cj, %LookupAllCompoundDictionaryMatches.exit ], [ %.122.i, %bb.bq ] ; 4 uses
  %.0.lcssa.i = phi i64 [ %i.ib, %LookupAllCompoundDictionaryMatches.exit ], [ %.1.i321, %bb.bq ] ; 6 uses
  %.021.lcssa.i863 = ptrtoaddr ptr %.021.lcssa.i to i64
  %.not46.i = icmp eq i64 %.024.lcssa.i, 0
  br i1 %.not46.i, label %.preheader.i, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %.preheader36.i
  %.027.lcssa.i870 = ptrtoaddr ptr %.027.lcssa.i to i64
  %.030.lcssa.i869 = ptrtoaddr ptr %.030.lcssa.i to i64
  %min.iters.check873 = icmp ult i64 %.024.lcssa.i, 4
  %i.mi = sub i64 %.027.lcssa.i870, %.030.lcssa.i869
  %diff.check871 = icmp ugt i64 %i.mi, -32
  %or.cond897 = select i1 %min.iters.check873, i1 true, i1 %diff.check871
  br i1 %or.cond897, label %.lr.ph50.i.preheader905, label %vector.ph874

vector.ph874:                                     ; preds = %.lr.ph50.i.preheader
  %n.vec875 = and i64 %.024.lcssa.i, -4           ; 3 uses
  %16 = and i64 %.024.lcssa.i, 3
  %17 = shl i64 %n.vec875, 3                      ; 2 uses
  %18 = getelementptr i8, ptr %.027.lcssa.i, i64 %17
  %19 = getelementptr i8, ptr %.030.lcssa.i, i64 %17 ; 2 uses
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next882, %vector.body876 ] ; 2 uses
  %i.mj = shl i64 %index877, 3                    ; 2 uses
  %next.gep878 = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mj ; 2 uses
  %next.gep879 = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mj ; 2 uses
  %i.mk = getelementptr i8, ptr %next.gep878, i64 16
  %wide.load880 = load <2 x i64>, ptr %next.gep878, align 4
  %wide.load881 = load <2 x i64>, ptr %i.mk, align 4
  %i.ml = getelementptr i8, ptr %next.gep879, i64 16
  store <2 x i64> %wide.load880, ptr %next.gep879, align 4
  store <2 x i64> %wide.load881, ptr %i.ml, align 4
  %index.next882 = add nuw i64 %index877, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next882, %n.vec875
  br i1 %i.mm, label %middle.block883, label %vector.body876, !llvm.loop !202

middle.block883:                                  ; preds = %vector.body876
  %cmp.n884 = icmp eq i64 %.024.lcssa.i, %n.vec875
  br i1 %cmp.n884, label %.preheader.i, label %.lr.ph50.i.preheader905

.lr.ph50.i.preheader905:                          ; preds = %.lr.ph50.i.preheader, %middle.block883
  %.22649.i.ph = phi i64 [ %.024.lcssa.i, %.lr.ph50.i.preheader ], [ %16, %middle.block883 ] ; 4 uses
  %.22948.i.ph = phi ptr [ %.027.lcssa.i, %.lr.ph50.i.preheader ], [ %18, %middle.block883 ] ; 2 uses
  %.23247.i.ph = phi ptr [ %.030.lcssa.i, %.lr.ph50.i.preheader ], [ %19, %middle.block883 ] ; 2 uses
  %i.mn = add i64 %.22649.i.ph, -1
  %xtraiter = and i64 %.22649.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader905, %.lr.ph50.i.prol
  %.22649.i.prol = phi i64 [ %i.mo, %.lr.ph50.i.prol ], [ %.22649.i.ph, %.lr.ph50.i.preheader905 ]
  %.22948.i.prol = phi ptr [ %i.mq, %.lr.ph50.i.prol ], [ %.22948.i.ph, %.lr.ph50.i.preheader905 ] ; 2 uses
  %.23247.i.prol = phi ptr [ %i.mp, %.lr.ph50.i.prol ], [ %.23247.i.ph, %.lr.ph50.i.preheader905 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader905 ]
  %i.mo = add i64 %.22649.i.prol, -1              ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.23247.i.prol, i64 8 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.22948.i.prol, i64 8 ; 2 uses
  %i.mr = load i64, ptr %.22948.i.prol, align 4
  store i64 %i.mr, ptr %.23247.i.prol, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !203

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader905
  %.lcssa928.unr = phi ptr [ poison, %.lr.ph50.i.preheader905 ], [ %i.mp, %.lr.ph50.i.prol ]
  %.22649.i.unr = phi i64 [ %.22649.i.ph, %.lr.ph50.i.preheader905 ], [ %i.mo, %.lr.ph50.i.prol ]
  %.22948.i.unr = phi ptr [ %.22948.i.ph, %.lr.ph50.i.preheader905 ], [ %i.mq, %.lr.ph50.i.prol ]
  %.23247.i.unr = phi ptr [ %.23247.i.ph, %.lr.ph50.i.preheader905 ], [ %i.mp, %.lr.ph50.i.prol ]
  %i.ms = icmp ult i64 %i.mn, 7
  br i1 %i.ms, label %.preheader.i, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %LookupAllCompoundDictionaryMatches.exit, %bb.bq
  %.041.i = phi i64 [ %.1.i321, %bb.bq ], [ %i.ib, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02140.i = phi ptr [ %.122.i, %bb.bq ], [ %i.cj, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.02439.i = phi i64 [ %.125.i320, %bb.bq ], [ %i.ly, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02738.i = phi ptr [ %.128.i319, %bb.bq ], [ %i.ie, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.03037.i = phi ptr [ %.131.i, %bb.bq ], [ %i.ci, %LookupAllCompoundDictionaryMatches.exit ] ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.02738.i, i64 4
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !72
  %i.mv = lshr i32 %i.mu, 5                       ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.02140.i, i64 4
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !72
  %i.my = lshr i32 %i.mx, 5                       ; 2 uses
  %i.mz = icmp samesign ult i32 %i.mv, %i.my
  br i1 %i.mz, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i
  %i.na = icmp eq i32 %i.mv, %i.my
  br i1 %i.na, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.nb = load i32, ptr %.02738.i, align 4, !tbaa !71
  %i.nc = load i32, ptr %.02140.i, align 4, !tbaa !71
  %i.nd = icmp ult i32 %i.nb, %i.nc
  br i1 %i.nd, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i
  %i.ne = getelementptr inbounds nuw i8, ptr %.02738.i, i64 8
  %i.nf = load i64, ptr %.02738.i, align 4
  store i64 %i.nf, ptr %.03037.i, align 4
  %i.ng = add i64 %.02439.i, -1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.nh = getelementptr inbounds nuw i8, ptr %.02140.i, i64 8
  %i.ni = load i64, ptr %.02140.i, align 4
  store i64 %i.ni, ptr %.03037.i, align 4
  %i.nj = add i64 %.041.i, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.128.i319 = phi ptr [ %i.ne, %bb.bo ], [ %.02738.i, %bb.bp ] ; 2 uses
  %.125.i320 = phi i64 [ %i.ng, %bb.bo ], [ %.02439.i, %bb.bp ] ; 3 uses
  %.122.i = phi ptr [ %.02140.i, %bb.bo ], [ %i.nh, %bb.bp ] ; 2 uses
  %.1.i321 = phi i64 [ %.041.i, %bb.bo ], [ %i.nj, %bb.bp ] ; 3 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03037.i, i64 8 ; 2 uses
  %i.nk = icmp ne i64 %.125.i320, 0
  %i.nl = icmp ne i64 %.1.i321, 0
  %i.nm = select i1 %i.nk, i1 %i.nl, i1 false
  br i1 %i.nm, label %.lr.ph.i, label %.preheader36.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block883, %.preheader36.i
  %.232.lcssa.i = phi ptr [ %.030.lcssa.i, %.preheader36.i ], [ %19, %middle.block883 ], [ %.lcssa928.unr, %.lr.ph50.i.prol.loopexit ], [ %i.ou, %.lr.ph50.i ] ; 4 uses
  %.not3552.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not3552.i, label %MergeMatches.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %.232.lcssa.i862 = ptrtoaddr ptr %.232.lcssa.i to i64
  %min.iters.check = icmp ult i64 %.0.lcssa.i, 4
  %i.nn = sub i64 %.021.lcssa.i863, %.232.lcssa.i862
  %diff.check = icmp ugt i64 %i.nn, -32
  %or.cond898 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond898, label %.lr.ph56.i.preheader904, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.i.preheader
  %n.vec = and i64 %.0.lcssa.i, -4                ; 3 uses
  %20 = and i64 %.0.lcssa.i, 3
  %21 = shl i64 %n.vec, 3                         ; 2 uses
  %22 = getelementptr i8, ptr %.021.lcssa.i, i64 %21
  %23 = getelementptr i8, ptr %.232.lcssa.i, i64 %21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.no = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.021.lcssa.i, i64 %i.no ; 2 uses
  %next.gep864 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.no ; 2 uses
  %i.np = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load865 = load <2 x i64>, ptr %i.np, align 4
  %i.nq = getelementptr i8, ptr %next.gep864, i64 16
  store <2 x i64> %wide.load, ptr %next.gep864, align 4
  store <2 x i64> %wide.load865, ptr %i.nq, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.lcssa.i, %n.vec
  br i1 %cmp.n, label %MergeMatches.exit, label %.lr.ph56.i.preheader904

.lr.ph56.i.preheader904:                          ; preds = %.lr.ph56.i.preheader, %middle.block
  %.255.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph56.i.preheader ], [ %20, %middle.block ] ; 4 uses
  %.22354.i.ph = phi ptr [ %.021.lcssa.i, %.lr.ph56.i.preheader ], [ %22, %middle.block ] ; 2 uses
  %.353.i.ph = phi ptr [ %.232.lcssa.i, %.lr.ph56.i.preheader ], [ %23, %middle.block ] ; 2 uses
  %i.ns = add i64 %.255.i.ph, -1
  %xtraiter947 = and i64 %.255.i.ph, 7            ; 2 uses
  %lcmp.mod948.not = icmp eq i64 %xtraiter947, 0
  br i1 %lcmp.mod948.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader904, %.lr.ph56.i.prol
  %.255.i.prol = phi i64 [ %i.nt, %.lr.ph56.i.prol ], [ %.255.i.ph, %.lr.ph56.i.preheader904 ]
  %.22354.i.prol = phi ptr [ %i.nv, %.lr.ph56.i.prol ], [ %.22354.i.ph, %.lr.ph56.i.preheader904 ] ; 2 uses
  %.353.i.prol = phi ptr [ %i.nu, %.lr.ph56.i.prol ], [ %.353.i.ph, %.lr.ph56.i.preheader904 ] ; 2 uses
  %prol.iter949 = phi i64 [ %prol.iter949.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader904 ]
  %i.nt = add i64 %.255.i.prol, -1                ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.353.i.prol, i64 8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.22354.i.prol, i64 8 ; 2 uses
  %i.nw = load i64, ptr %.22354.i.prol, align 4
  store i64 %i.nw, ptr %.353.i.prol, align 4
  %prol.iter949.next = add i64 %prol.iter949, 1   ; 2 uses
  %prol.iter949.cmp.not = icmp eq i64 %prol.iter949.next, %xtraiter947
  br i1 %prol.iter949.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !205

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader904
  %.255.i.unr = phi i64 [ %.255.i.ph, %.lr.ph56.i.preheader904 ], [ %i.nt, %.lr.ph56.i.prol ]
  %.22354.i.unr = phi ptr [ %.22354.i.ph, %.lr.ph56.i.preheader904 ], [ %i.nv, %.lr.ph56.i.prol ]
  %.353.i.unr = phi ptr [ %.353.i.ph, %.lr.ph56.i.preheader904 ], [ %i.nu, %.lr.ph56.i.prol ]
  %i.nx = icmp ult i64 %i.ns, 7
  br i1 %i.nx, label %MergeMatches.exit, label %.lr.ph56.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %.22649.i = phi i64 [ %i.ot, %.lr.ph50.i ], [ %.22649.i.unr, %.lr.ph50.i.prol.loopexit ]
  %.22948.i = phi ptr [ %i.ov, %.lr.ph50.i ], [ %.22948.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.23247.i = phi ptr [ %i.ou, %.lr.ph50.i ], [ %.23247.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.23247.i, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %.22948.i, i64 8
  %i.oa = load i64, ptr %.22948.i, align 4
  store i64 %i.oa, ptr %.23247.i, align 4
  %i.ob = getelementptr inbounds nuw i8, ptr %.23247.i, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %.22948.i, i64 16
  %i.od = load i64, ptr %i.nz, align 4
  store i64 %i.od, ptr %i.ny, align 4
  %i.oe = getelementptr inbounds nuw i8, ptr %.23247.i, i64 24
  %i.of = getelementptr inbounds nuw i8, ptr %.22948.i, i64 24
  %i.og = load i64, ptr %i.oc, align 4
  store i64 %i.og, ptr %i.ob, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.23247.i, i64 32
  %i.oi = getelementptr inbounds nuw i8, ptr %.22948.i, i64 32
  %i.oj = load i64, ptr %i.of, align 4
  store i64 %i.oj, ptr %i.oe, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %.23247.i, i64 40
  %i.ol = getelementptr inbounds nuw i8, ptr %.22948.i, i64 40
  %i.om = load i64, ptr %i.oi, align 4
  store i64 %i.om, ptr %i.oh, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %.23247.i, i64 48
  %i.oo = getelementptr inbounds nuw i8, ptr %.22948.i, i64 48
  %i.op = load i64, ptr %i.ol, align 4
  store i64 %i.op, ptr %i.ok, align 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.23247.i, i64 56
  %i.or = getelementptr inbounds nuw i8, ptr %.22948.i, i64 56
  %i.os = load i64, ptr %i.oo, align 4
  store i64 %i.os, ptr %i.on, align 4
  %i.ot = add i64 %.22649.i, -8                   ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.23247.i, i64 64 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.22948.i, i64 64
  %i.ow = load i64, ptr %i.or, align 4
  store i64 %i.ow, ptr %i.oq, align 4
  %.not.i318.7 = icmp eq i64 %i.ot, 0
  br i1 %.not.i318.7, label %.preheader.i, label %.lr.ph50.i, !llvm.loop !206

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.255.i = phi i64 [ %i.ps, %.lr.ph56.i ], [ %.255.i.unr, %.lr.ph56.i.prol.loopexit ]
  %.22354.i = phi ptr [ %i.pu, %.lr.ph56.i ], [ %.22354.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %.353.i = phi ptr [ %i.pt, %.lr.ph56.i ], [ %.353.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.353.i, i64 8
  %i.oy = getelementptr inbounds nuw i8, ptr %.22354.i, i64 8
  %i.oz = load i64, ptr %.22354.i, align 4
  store i64 %i.oz, ptr %.353.i, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %.353.i, i64 16
  %i.pb = getelementptr inbounds nuw i8, ptr %.22354.i, i64 16
  %i.pc = load i64, ptr %i.oy, align 4
  store i64 %i.pc, ptr %i.ox, align 4
  %i.pd = getelementptr inbounds nuw i8, ptr %.353.i, i64 24
  %i.pe = getelementptr inbounds nuw i8, ptr %.22354.i, i64 24
  %i.pf = load i64, ptr %i.pb, align 4
  store i64 %i.pf, ptr %i.pa, align 4
  %i.pg = getelementptr inbounds nuw i8, ptr %.353.i, i64 32
  %i.ph = getelementptr inbounds nuw i8, ptr %.22354.i, i64 32
  %i.pi = load i64, ptr %i.pe, align 4
  store i64 %i.pi, ptr %i.pd, align 4
  %i.pj = getelementptr inbounds nuw i8, ptr %.353.i, i64 40
  %i.pk = getelementptr inbounds nuw i8, ptr %.22354.i, i64 40
  %i.pl = load i64, ptr %i.ph, align 4
  store i64 %i.pl, ptr %i.pg, align 4
  %i.pm = getelementptr inbounds nuw i8, ptr %.353.i, i64 48
  %i.pn = getelementptr inbounds nuw i8, ptr %.22354.i, i64 48
  %i.po = load i64, ptr %i.pk, align 4
  store i64 %i.po, ptr %i.pj, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %.353.i, i64 56
  %i.pq = getelementptr inbounds nuw i8, ptr %.22354.i, i64 56
  %i.pr = load i64, ptr %i.pn, align 4
  store i64 %i.pr, ptr %i.pm, align 4
  %i.ps = add i64 %.255.i, -8                     ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %.353.i, i64 64
  %i.pu = getelementptr inbounds nuw i8, ptr %.22354.i, i64 64
  %i.pv = load i64, ptr %i.pq, align 4
  store i64 %i.pv, ptr %i.pp, align 4
  %.not35.i.7 = icmp eq i64 %i.ps, 0
  br i1 %.not35.i.7, label %MergeMatches.exit, label %.lr.ph56.i, !llvm.loop !207

MergeMatches.exit:                                ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %middle.block, %.preheader.i
  %i.pw = add i64 %i.ly, %i.ib
  br label %bb.br

bb.br:                                            ; preds = %MergeMatches.exit, %FindAllMatchesH10.exit
  %.0201 = phi i64 [ %i.pw, %MergeMatches.exit ], [ %i.ib, %FindAllMatchesH10.exit ] ; 3 uses
  %i.px = trunc i64 %.0201 to i32
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0203629 ; 3 uses
  store i32 %i.px, ptr %i.py, align 4, !tbaa !21
  %.not230 = icmp eq i64 %.0201, 0
  br i1 %.not230, label %bb.co, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pz = add i64 %.0201, %.0205628               ; 2 uses
  %i.qa = getelementptr [8 x i8], ptr %.1, i64 %i.pz ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 -4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !72 ; 2 uses
  %i.qd = icmp ugt i32 %i.qc, 10431
  br i1 %i.qd, label %bb.bt, label %bb.co

bb.bt:                                            ; preds = %bb.bs
  %i.qe = lshr i32 %i.qc, 5
  %i.qf = zext nneg i32 %i.qe to i64              ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qa, i64 -8
  %i.qh = add nsw i64 %i.qf, -1                   ; 2 uses
  %i.qi = add i64 %.0205628, 1
  %i.qj = load i64, ptr %i.qg, align 4
  store i64 %i.qj, ptr %i.ci, align 4
  store i32 1, ptr %i.py, align 4, !tbaa !21
  %i.qk = add i64 %i.ay, 1                        ; 3 uses
  %i.ql = add i64 %i.ay, %i.qf
  %i.qm = call i64 @llvm.umin.i64(i64 %i.ql, i64 %i.p) ; 4 uses
  %i.qn = add i64 %i.ay, 64
  %.not.i233 = icmp ugt i64 %i.qn, %i.qm
  %i.qo = add i64 %i.qm, -63
  %spec.select.i234 = select i1 %.not.i233, i64 %i.qk, i64 %i.qo ; 5 uses
  %i.qp = add i64 %i.ay, 513
  %.not22.i = icmp ule i64 %i.qp, %spec.select.i234
  %i.qq = icmp ult i64 %i.qk, %spec.select.i234
  %or.cond = and i1 %.not22.i, %i.qq
  br i1 %or.cond, label %.lr.ph590, label %.loopexit

.lr.ph590:                                        ; preds = %bb.bt
  %i.qr = load i64, ptr %i.ae, align 8, !tbaa !77, !alias.scope !246, !noalias !247 ; 4 uses
  %i.qs = add i64 %i.qr, -15
  %i.qt = load ptr, ptr %i.ah, align 8, !tbaa !75, !alias.scope !248, !noalias !249
  %i.qu = load ptr, ptr %i.ai, align 8, !tbaa !76, !alias.scope !248, !noalias !249 ; 7 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph590, %StoreH10.exit
  %.0.i235588 = phi i64 [ %i.qk, %.lr.ph590 ], [ %i.th, %StoreH10.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.qv = and i64 %.0.i235588, %4
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 %i.qv ; 3 uses
  %.val316 = load i32, ptr %i.qw, align 1
  %i.qx = mul i32 %.val316, 506832829
  %i.qy = lshr i32 %i.qx, 15
  %i.qz = zext nneg i32 %i.qy to i64
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.qz ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !21, !noalias !252 ; 2 uses
  %i.rc = and i64 %i.qr, %.0.i235588
  %i.rd = shl i64 %i.rc, 1                        ; 3 uses
  %i.re = or disjoint i64 %i.rd, 1                ; 2 uses
  %i.rf = trunc i64 %.0.i235588 to i32
  store i32 %i.rf, ptr %i.ra, align 4, !tbaa !21, !noalias !253
  %.0108.i.i572 = zext i32 %i.rb to i64           ; 2 uses
  %i.rg = icmp eq i64 %.0.i235588, %.0108.i.i572
  br i1 %i.rg, label %._crit_edge582, label %.lr.ph581

.lr.ph581:                                        ; preds = %bb.bu, %bb.cd
  %.0108.i.i579 = phi i64 [ %.0108.i.i, %bb.cd ], [ %.0108.i.i572, %bb.bu ] ; 4 uses
  %.093.i.i578 = phi i64 [ %i.te, %bb.cd ], [ 64, %bb.bu ] ; 2 uses
  %.094.i.i577 = phi i64 [ %.195.i.i, %bb.cd ], [ 0, %bb.bu ] ; 2 uses
  %.096.i.i576 = phi i64 [ %.197.i.i, %bb.cd ], [ 0, %bb.bu ] ; 2 uses
  %.0100.i.i575 = phi i64 [ %.1101.i.i, %bb.cd ], [ %i.re, %bb.bu ] ; 4 uses
  %.0104.i.i574 = phi i64 [ %.1105.i.i, %bb.cd ], [ %i.rd, %bb.bu ] ; 4 uses
  %.0108.i.i.in573 = phi i32 [ %.1109.in.i.i, %bb.cd ], [ %i.rb, %bb.bu ] ; 2 uses
  %i.rh = sub i64 %.0.i235588, %.0108.i.i579
  %i.ri = icmp ugt i64 %i.rh, %i.qs
  %i.rj = icmp eq i64 %.093.i.i578, 0
  %or.cond.i.i = select i1 %i.ri, i1 true, i1 %i.rj
  br i1 %or.cond.i.i, label %._crit_edge582, label %bb.bv

._crit_edge582:                                   ; preds = %bb.cd, %.lr.ph581, %bb.bu
end_hunk_2
