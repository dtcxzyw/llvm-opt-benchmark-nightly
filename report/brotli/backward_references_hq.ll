Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/backward_references_hq?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@BrotliZopfliComputeShortestPath:bb.a

bb.ar:                                            ; preds = %FindAllMatchesH10.exit
  %i.iq = load i64, ptr %i.ax, align 8, !tbaa !79
  %i.ir = load i64, ptr %i.q, align 8, !tbaa !55, !noalias !152
  %.0.copyload.i93.i = load i64, ptr %i.hq, align 1, !alias.scope !153
  %.neg326 = add i64 %i.ir, %i.bz
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.bf
  %.0.i150457 = phi i64 [ 0, %bb.ar ], [ %i.mk, %bb.bf ] ; 3 uses
  %.026.i456 = phi i64 [ 0, %bb.ar ], [ %i.mq, %bb.bf ] ; 3 uses
  %.027.i455 = phi i64 [ 3, %bb.ar ], [ %.128.i, %bb.bf ] ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.026.i456
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !81, !noalias !152 ; 7 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.026.i456
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !47, !noalias !152
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0.i150457
  %i.ix = sub i64 64, %.0.i150457                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !83, !noalias !153
  %i.ja = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !84, !noalias !153
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !85, !noalias !153 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 20
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !86, !noalias !153 ; 2 uses
  %i.jg = sub i32 64, %i.jd
  %i.jh = sub i32 32, %i.jf
  %i.ji = lshr i32 -1, %i.jh
  %i.jj = sub i32 64, %i.jb
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = lshr i64 -1, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 2 uses
  %i.jn = zext nneg i32 %i.jf to i64
  %i.jo = shl nuw i64 1, %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jo ; 2 uses
  %i.jq = zext nneg i32 %i.jd to i64
  %i.jr = shl nuw i64 1, %i.jq
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.jr ; 2 uses
  %i.jt = and i64 %.0.copyload.i93.i, %i.jl
  %i.ju = mul i64 %i.jt, 2297779722762296275
  %i.jv = zext nneg i32 %i.jg to i64
  %i.jw = lshr i64 %i.ju, %i.jv                   ; 2 uses
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = and i32 %i.ji, %i.jx
  %i.jz = and i64 %i.jw, 4294967295
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !53, !noalias !153 ; 2 uses
  %i.kc = zext i16 %i.kb to i32
  %i.kd = zext i32 %i.jy to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !21, !noalias !153
  %i.kg = add i32 %i.kf, %i.kc
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kh
  %.not542 = icmp eq i16 %i.kb, -1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !87, !noalias !153
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kl ; 2 uses
  %i.kn = load i32, ptr %i.it, align 4, !tbaa !88, !noalias !153
  %i.ko = icmp eq i32 %i.kn, -558043680
  br i1 %i.ko, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0.copyload.i187 = load ptr, ptr %i.km, align 1, !noalias !153
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
  %i.kq = load i32, ptr %.077.i448, align 4, !tbaa !21, !noalias !153 ; 2 uses
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
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !22, !alias.scope !153
  %i.ld = getelementptr i8, ptr %.081.i, i64 %.078.i447
  %i.le = getelementptr i8, ptr %i.ld, i64 %i.kt
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !22, !noalias !153
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
  %.0.copyload.i92.i = load i64, ptr %.024.i.i172431, align 1, !alias.scope !153 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i171430, align 1, !noalias !153 ; 2 uses
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
  %i.lt = load i8, ptr %.228.i.i175439, align 1, !tbaa !22, !noalias !153
  %i.lu = load i8, ptr %.125.i.i176440, align 1, !tbaa !22, !alias.scope !153
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
  store i32 %i.me, ptr %.082.i446, align 4, !tbaa !71, !noalias !153
  %.tr.i.i182 = trunc i64 %.2.i.i181 to i32
  %i.mf = shl i32 %.tr.i.i182, 5
  %i.mg = getelementptr inbounds nuw i8, ptr %.082.i446, i64 4
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !72, !noalias !153
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
  %i.mv = and i64 %.024.lcssa.i, 3
  %i.mw = shl i64 %n.vec762, 3                    ; 2 uses
  %i.mx = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mw
  %i.my = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mw ; 2 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph761
  %index764 = phi i64 [ 0, %vector.ph761 ], [ %index.next769, %vector.body763 ] ; 2 uses
  %i.mz = shl i64 %index764, 3                    ; 2 uses
  %next.gep765 = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mz ; 2 uses
  %next.gep766 = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mz ; 2 uses
  %i.na = getelementptr i8, ptr %next.gep765, i64 16
  %wide.load767 = load <2 x i64>, ptr %next.gep765, align 4, !tbaa !21
  %wide.load768 = load <2 x i64>, ptr %i.na, align 4, !tbaa !21
  %i.nb = getelementptr i8, ptr %next.gep766, i64 16
  store <2 x i64> %wide.load767, ptr %next.gep766, align 4, !tbaa !21
  store <2 x i64> %wide.load768, ptr %i.nb, align 4, !tbaa !21
  %index.next769 = add nuw i64 %index764, 4       ; 2 uses
  %i.nc = icmp eq i64 %index.next769, %n.vec762
  br i1 %i.nc, label %middle.block770, label %vector.body763, !llvm.loop !119

middle.block770:                                  ; preds = %vector.body763
  %cmp.n771 = icmp eq i64 %.024.lcssa.i, %n.vec762
  br i1 %cmp.n771, label %.preheader.i, label %.lr.ph50.i.preheader778

.lr.ph50.i.preheader778:                          ; preds = %.lr.ph50.i.preheader, %middle.block770
  %.22649.i.ph = phi i64 [ %.024.lcssa.i, %.lr.ph50.i.preheader ], [ %i.mv, %middle.block770 ] ; 4 uses
  %.22948.i.ph = phi ptr [ %.027.lcssa.i, %.lr.ph50.i.preheader ], [ %i.mx, %middle.block770 ] ; 2 uses
  %.23247.i.ph = phi ptr [ %.030.lcssa.i, %.lr.ph50.i.preheader ], [ %i.my, %middle.block770 ] ; 2 uses
  %i.nd = add i64 %.22649.i.ph, -1
  %xtraiter = and i64 %.22649.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader778, %.lr.ph50.i.prol
  %.22649.i.prol = phi i64 [ %i.ne, %.lr.ph50.i.prol ], [ %.22649.i.ph, %.lr.ph50.i.preheader778 ]
  %.22948.i.prol = phi ptr [ %i.ng, %.lr.ph50.i.prol ], [ %.22948.i.ph, %.lr.ph50.i.preheader778 ] ; 2 uses
  %.23247.i.prol = phi ptr [ %i.nf, %.lr.ph50.i.prol ], [ %.23247.i.ph, %.lr.ph50.i.preheader778 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader778 ]
  %i.ne = add i64 %.22649.i.prol, -1              ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.23247.i.prol, i64 8 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.22948.i.prol, i64 8 ; 2 uses
  %i.nh = load i64, ptr %.22948.i.prol, align 4, !tbaa !21
  store i64 %i.nh, ptr %.23247.i.prol, align 4, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !120

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader778
  %.lcssa801.unr = phi ptr [ poison, %.lr.ph50.i.preheader778 ], [ %i.nf, %.lr.ph50.i.prol ]
  %.22649.i.unr = phi i64 [ %.22649.i.ph, %.lr.ph50.i.preheader778 ], [ %i.ne, %.lr.ph50.i.prol ]
  %.22948.i.unr = phi ptr [ %.22948.i.ph, %.lr.ph50.i.preheader778 ], [ %i.ng, %.lr.ph50.i.prol ]
  %.23247.i.unr = phi ptr [ %.23247.i.ph, %.lr.ph50.i.preheader778 ], [ %i.nf, %.lr.ph50.i.prol ]
  %i.ni = icmp ult i64 %i.nd, 7
  br i1 %i.ni, label %.preheader.i, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %LookupAllCompoundDictionaryMatches.exit, %bb.bk
  %.041.i = phi i64 [ %.1.i241, %bb.bk ], [ %i.io, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02140.i = phi ptr [ %.122.i, %bb.bk ], [ %i.as, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.02439.i = phi i64 [ %.125.i240, %bb.bk ], [ %i.mk, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02738.i = phi ptr [ %.128.i239, %bb.bk ], [ %i.az, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.03037.i = phi ptr [ %.131.i, %bb.bk ], [ %i.m, %LookupAllCompoundDictionaryMatches.exit ] ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.02738.i, i64 4
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !72
  %i.nl = lshr i32 %i.nk, 5                       ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.02140.i, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !72
  %i.no = lshr i32 %i.nn, 5                       ; 2 uses
  %i.np = icmp samesign ult i32 %i.nl, %i.no
  br i1 %i.np, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i
  %i.nq = icmp eq i32 %i.nl, %i.no
  br i1 %i.nq, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.nr = load i32, ptr %.02738.i, align 4, !tbaa !71
  %i.ns = load i32, ptr %.02140.i, align 4, !tbaa !71
  %i.nt = icmp ult i32 %i.nr, %i.ns
  br i1 %i.nt, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %.lr.ph.i
  %i.nu = getelementptr inbounds nuw i8, ptr %.02738.i, i64 8
  %i.nv = load i64, ptr %.02738.i, align 4, !tbaa !21
  store i64 %i.nv, ptr %.03037.i, align 4, !tbaa !21
  %i.nw = add i64 %.02439.i, -1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh, %bb.bg
  %i.nx = getelementptr inbounds nuw i8, ptr %.02140.i, i64 8
  %i.ny = load i64, ptr %.02140.i, align 4, !tbaa !21
  store i64 %i.ny, ptr %.03037.i, align 4, !tbaa !21
  %i.nz = add i64 %.041.i, -1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.128.i239 = phi ptr [ %i.nu, %bb.bi ], [ %.02738.i, %bb.bj ] ; 2 uses
  %.125.i240 = phi i64 [ %i.nw, %bb.bi ], [ %.02439.i, %bb.bj ] ; 3 uses
  %.122.i = phi ptr [ %.02140.i, %bb.bi ], [ %i.nx, %bb.bj ] ; 2 uses
  %.1.i241 = phi i64 [ %.041.i, %bb.bi ], [ %i.nz, %bb.bj ] ; 3 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03037.i, i64 8 ; 2 uses
  %i.oa = icmp ne i64 %.125.i240, 0
  %i.ob = icmp ne i64 %.1.i241, 0
  %i.oc = select i1 %i.oa, i1 %i.ob, i1 false
  br i1 %i.oc, label %.lr.ph.i, label %.preheader36.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block770, %.preheader36.i
  %.232.lcssa.i = phi ptr [ %.030.lcssa.i, %.preheader36.i ], [ %i.my, %middle.block770 ], [ %.lcssa801.unr, %.lr.ph50.i.prol.loopexit ], [ %i.po, %.lr.ph50.i ] ; 4 uses
  %.not3552.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not3552.i, label %MergeMatches.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %.232.lcssa.i749 = ptrtoaddr ptr %.232.lcssa.i to i64
  %min.iters.check = icmp ult i64 %.0.lcssa.i, 4
  %i.od = sub i64 %.021.lcssa.i750, %.232.lcssa.i749
  %diff.check = icmp ugt i64 %i.od, -32
  %or.cond776 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond776, label %.lr.ph56.i.preheader777, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.i.preheader
  %n.vec = and i64 %.0.lcssa.i, -4                ; 3 uses
  %i.oe = and i64 %.0.lcssa.i, 3
  %i.of = shl i64 %n.vec, 3                       ; 2 uses
  %i.og = getelementptr i8, ptr %.021.lcssa.i, i64 %i.of
  %i.oh = getelementptr i8, ptr %.232.lcssa.i, i64 %i.of
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.021.lcssa.i, i64 %i.oi ; 2 uses
  %next.gep751 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.oi ; 2 uses
  %i.oj = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !tbaa !21
  %wide.load752 = load <2 x i64>, ptr %i.oj, align 4, !tbaa !21
  %i.ok = getelementptr i8, ptr %next.gep751, i64 16
  store <2 x i64> %wide.load, ptr %next.gep751, align 4, !tbaa !21
  store <2 x i64> %wide.load752, ptr %i.ok, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ol = icmp eq i64 %index.next, %n.vec
  br i1 %i.ol, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.lcssa.i, %n.vec
  br i1 %cmp.n, label %MergeMatches.exit, label %.lr.ph56.i.preheader777

.lr.ph56.i.preheader777:                          ; preds = %.lr.ph56.i.preheader, %middle.block
  %.255.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph56.i.preheader ], [ %i.oe, %middle.block ] ; 4 uses
  %.22354.i.ph = phi ptr [ %.021.lcssa.i, %.lr.ph56.i.preheader ], [ %i.og, %middle.block ] ; 2 uses
  %.353.i.ph = phi ptr [ %.232.lcssa.i, %.lr.ph56.i.preheader ], [ %i.oh, %middle.block ] ; 2 uses
  %i.om = add i64 %.255.i.ph, -1
  %xtraiter822 = and i64 %.255.i.ph, 7            ; 2 uses
  %lcmp.mod823.not = icmp eq i64 %xtraiter822, 0
  br i1 %lcmp.mod823.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader777, %.lr.ph56.i.prol
  %.255.i.prol = phi i64 [ %i.on, %.lr.ph56.i.prol ], [ %.255.i.ph, %.lr.ph56.i.preheader777 ]
  %.22354.i.prol = phi ptr [ %i.op, %.lr.ph56.i.prol ], [ %.22354.i.ph, %.lr.ph56.i.preheader777 ] ; 2 uses
  %.353.i.prol = phi ptr [ %i.oo, %.lr.ph56.i.prol ], [ %.353.i.ph, %.lr.ph56.i.preheader777 ] ; 2 uses
  %prol.iter824 = phi i64 [ %prol.iter824.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader777 ]
  %i.on = add i64 %.255.i.prol, -1                ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.353.i.prol, i64 8 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.22354.i.prol, i64 8 ; 2 uses
  %i.oq = load i64, ptr %.22354.i.prol, align 4, !tbaa !21
  store i64 %i.oq, ptr %.353.i.prol, align 4, !tbaa !21
  %prol.iter824.next = add i64 %prol.iter824, 1   ; 2 uses
  %prol.iter824.cmp.not = icmp eq i64 %prol.iter824.next, %xtraiter822
  br i1 %prol.iter824.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !122

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader777
  %.255.i.unr = phi i64 [ %.255.i.ph, %.lr.ph56.i.preheader777 ], [ %i.on, %.lr.ph56.i.prol ]
  %.22354.i.unr = phi ptr [ %.22354.i.ph, %.lr.ph56.i.preheader777 ], [ %i.op, %.lr.ph56.i.prol ]
  %.353.i.unr = phi ptr [ %.353.i.ph, %.lr.ph56.i.preheader777 ], [ %i.oo, %.lr.ph56.i.prol ]
  %i.or = icmp ult i64 %i.om, 7
  br i1 %i.or, label %MergeMatches.exit, label %.lr.ph56.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %.22649.i = phi i64 [ %i.pn, %.lr.ph50.i ], [ %.22649.i.unr, %.lr.ph50.i.prol.loopexit ]
  %.22948.i = phi ptr [ %i.pp, %.lr.ph50.i ], [ %.22948.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.23247.i = phi ptr [ %i.po, %.lr.ph50.i ], [ %.23247.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.23247.i, i64 8
  %i.ot = getelementptr inbounds nuw i8, ptr %.22948.i, i64 8
  %i.ou = load i64, ptr %.22948.i, align 4, !tbaa !21
  store i64 %i.ou, ptr %.23247.i, align 4, !tbaa !21
  %i.ov = getelementptr inbounds nuw i8, ptr %.23247.i, i64 16
  %i.ow = getelementptr inbounds nuw i8, ptr %.22948.i, i64 16
  %i.ox = load i64, ptr %i.ot, align 4, !tbaa !21
  store i64 %i.ox, ptr %i.os, align 4, !tbaa !21
  %i.oy = getelementptr inbounds nuw i8, ptr %.23247.i, i64 24
  %i.oz = getelementptr inbounds nuw i8, ptr %.22948.i, i64 24
  %i.pa = load i64, ptr %i.ow, align 4, !tbaa !21
  store i64 %i.pa, ptr %i.ov, align 4, !tbaa !21
  %i.pb = getelementptr inbounds nuw i8, ptr %.23247.i, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %.22948.i, i64 32
  %i.pd = load i64, ptr %i.oz, align 4, !tbaa !21
  store i64 %i.pd, ptr %i.oy, align 4, !tbaa !21
  %i.pe = getelementptr inbounds nuw i8, ptr %.23247.i, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %.22948.i, i64 40
  %i.pg = load i64, ptr %i.pc, align 4, !tbaa !21
  store i64 %i.pg, ptr %i.pb, align 4, !tbaa !21
  %i.ph = getelementptr inbounds nuw i8, ptr %.23247.i, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %.22948.i, i64 48
  %i.pj = load i64, ptr %i.pf, align 4, !tbaa !21
  store i64 %i.pj, ptr %i.pe, align 4, !tbaa !21
  %i.pk = getelementptr inbounds nuw i8, ptr %.23247.i, i64 56
  %i.pl = getelementptr inbounds nuw i8, ptr %.22948.i, i64 56
  %i.pm = load i64, ptr %i.pi, align 4, !tbaa !21
  store i64 %i.pm, ptr %i.ph, align 4, !tbaa !21
  %i.pn = add i64 %.22649.i, -8                   ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.23247.i, i64 64 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.22948.i, i64 64
  %i.pq = load i64, ptr %i.pl, align 4, !tbaa !21
  store i64 %i.pq, ptr %i.pk, align 4, !tbaa !21
  %.not.i238.7 = icmp eq i64 %i.pn, 0
  br i1 %.not.i238.7, label %.preheader.i, label %.lr.ph50.i, !llvm.loop !123

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.255.i = phi i64 [ %i.qm, %.lr.ph56.i ], [ %.255.i.unr, %.lr.ph56.i.prol.loopexit ]
  %.22354.i = phi ptr [ %i.qo, %.lr.ph56.i ], [ %.22354.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %.353.i = phi ptr [ %i.qn, %.lr.ph56.i ], [ %.353.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.353.i, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %.22354.i, i64 8
  %i.pt = load i64, ptr %.22354.i, align 4, !tbaa !21
  store i64 %i.pt, ptr %.353.i, align 4, !tbaa !21
  %i.pu = getelementptr inbounds nuw i8, ptr %.353.i, i64 16
  %i.pv = getelementptr inbounds nuw i8, ptr %.22354.i, i64 16
  %i.pw = load i64, ptr %i.ps, align 4, !tbaa !21
  store i64 %i.pw, ptr %i.pr, align 4, !tbaa !21
  %i.px = getelementptr inbounds nuw i8, ptr %.353.i, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %.22354.i, i64 24
  %i.pz = load i64, ptr %i.pv, align 4, !tbaa !21
  store i64 %i.pz, ptr %i.pu, align 4, !tbaa !21
  %i.qa = getelementptr inbounds nuw i8, ptr %.353.i, i64 32
  %i.qb = getelementptr inbounds nuw i8, ptr %.22354.i, i64 32
  %i.qc = load i64, ptr %i.py, align 4, !tbaa !21
  store i64 %i.qc, ptr %i.px, align 4, !tbaa !21
  %i.qd = getelementptr inbounds nuw i8, ptr %.353.i, i64 40
  %i.qe = getelementptr inbounds nuw i8, ptr %.22354.i, i64 40
  %i.qf = load i64, ptr %i.qb, align 4, !tbaa !21
  store i64 %i.qf, ptr %i.qa, align 4, !tbaa !21
  %i.qg = getelementptr inbounds nuw i8, ptr %.353.i, i64 48
  %i.qh = getelementptr inbounds nuw i8, ptr %.22354.i, i64 48
  %i.qi = load i64, ptr %i.qe, align 4, !tbaa !21
  store i64 %i.qi, ptr %i.qd, align 4, !tbaa !21
  %i.qj = getelementptr inbounds nuw i8, ptr %.353.i, i64 56
  %i.qk = getelementptr inbounds nuw i8, ptr %.22354.i, i64 56
  %i.ql = load i64, ptr %i.qh, align 4, !tbaa !21
  store i64 %i.ql, ptr %i.qg, align 4, !tbaa !21
  %i.qm = add i64 %.255.i, -8                     ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.353.i, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %.22354.i, i64 64
  %i.qp = load i64, ptr %i.qk, align 4, !tbaa !21
  store i64 %i.qp, ptr %i.qj, align 4, !tbaa !21
  %.not35.i.7 = icmp eq i64 %i.qm, 0
  br i1 %.not35.i.7, label %MergeMatches.exit, label %.lr.ph56.i, !llvm.loop !124

MergeMatches.exit:                                ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %middle.block, %.preheader.i
  %i.qq = add i64 %i.mk, %i.io
  br label %bb.bl

bb.bl:                                            ; preds = %MergeMatches.exit, %FindAllMatchesH10.exit
  %.0134 = phi i64 [ %i.qq, %MergeMatches.exit ], [ %i.io, %FindAllMatchesH10.exit ] ; 3 uses
  %.not147 = icmp eq i64 %.0134, 0
  br i1 %.not147, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qr = getelementptr [8 x i8], ptr %i.m, i64 %.0134 ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qr, i64 -4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !72
  %i.qu = lshr i32 %i.qt, 5
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = icmp samesign ult i64 %i.l, %i.qv
  br i1 %i.qw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qx = getelementptr i8, ptr %i.qr, i64 -8
  %i.qy = load i64, ptr %i.qx, align 4, !tbaa !21
  store i64 %i.qy, ptr %i.m, align 4, !tbaa !21
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %.1 = phi i64 [ 1, %bb.bn ], [ %.0134, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %i.qz = call fastcc i64 @UpdateNodes(i64 noundef %1, i64 noundef %2, i64 noundef %.0137539, ptr noundef %3, i64 noundef %4, ptr noundef %6, i64 noundef %i.h, ptr noundef %7, i64 noundef %.1, ptr noundef %i.m, ptr noundef nonnull %i.u, ptr noundef %12, ptr noundef nonnull %9) ; 2 uses
  %i.ra = icmp ult i64 %i.qz, 16384
  %spec.store.select = select i1 %i.ra, i64 0, i64 %i.qz ; 3 uses
  %i.rb = icmp eq i64 %.1, 1
  br i1 %i.rb, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.rc = load i32, ptr %i.bc, align 4, !tbaa !72
  %i.rd = lshr i32 %i.rc, 5
  %i.re = zext nneg i32 %i.rd to i64              ; 2 uses
  %i.rf = icmp samesign ult i64 %i.l, %i.re
  br i1 %i.rf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.rg = call i64 @llvm.umax.i64(i64 %i.re, i64 %spec.store.select)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %.0135 = phi i64 [ %i.rg, %bb.bq ], [ %spec.store.select, %bb.bp ], [ %spec.store.select, %bb.bo ] ; 3 uses
  %i.rh = icmp ugt i64 %.0135, 1
  br i1 %i.rh, label %bb.bs, label %bb.df

bb.bs:                                            ; preds = %bb.br
  %i.ri = add i64 %i.bw, 1                        ; 3 uses
  %i.rj = add i64 %.0135, %i.bw
  %i.rk = call i64 @llvm.umin.i64(i64 %i.rj, i64 %i.o) ; 4 uses
  %i.rl = add i64 %i.bw, 64
  %.not.i152 = icmp ugt i64 %i.rl, %i.rk
  %i.rm = add i64 %i.rk, -63
  %spec.select.i153 = select i1 %.not.i152, i64 %i.ri, i64 %i.rm ; 5 uses
  %i.rn = add i64 %i.bw, 513
  %.not22.i = icmp ule i64 %i.rn, %spec.select.i153
  %i.ro = icmp ult i64 %i.ri, %spec.select.i153
  %or.cond = and i1 %.not22.i, %i.ro
  br i1 %or.cond, label %.lr.ph492, label %.loopexit336

.lr.ph492:                                        ; preds = %bb.bs
  %i.rp = load i64, ptr %i.aq, align 8, !tbaa !77, !alias.scope !154 ; 4 uses
  %i.rq = add i64 %i.rp, -15
  %i.rr = load ptr, ptr %i.at, align 8, !tbaa !75, !alias.scope !155
  %i.rs = load ptr, ptr %i.au, align 8, !tbaa !76, !alias.scope !155 ; 7 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph492, %StoreH10.exit
  %.0.i154490 = phi i64 [ %i.ri, %.lr.ph492 ], [ %i.uf, %StoreH10.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.rt = and i64 %.0.i154490, %4
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 %i.rt ; 3 uses
  %.val235 = load i32, ptr %i.ru, align 1
  %i.rv = mul i32 %.val235, 506832829
  %i.rw = lshr i32 %i.rv, 15
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %i.rx ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !21, !noalias !159 ; 2 uses
  %i.sa = and i64 %i.rp, %.0.i154490
  %i.sb = shl i64 %i.sa, 1                        ; 3 uses
  %i.sc = or disjoint i64 %i.sb, 1                ; 2 uses
  %i.sd = trunc i64 %.0.i154490 to i32
  store i32 %i.sd, ptr %i.ry, align 4, !tbaa !21, !noalias !160
  %.0108.i.i474 = zext i32 %i.rz to i64           ; 2 uses
  %i.se = icmp eq i64 %.0.i154490, %.0108.i.i474
  br i1 %i.se, label %._crit_edge484, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.bt, %bb.cc
  %.0108.i.i481 = phi i64 [ %.0108.i.i, %bb.cc ], [ %.0108.i.i474, %bb.bt ] ; 4 uses
  %.093.i.i480 = phi i64 [ %i.uc, %bb.cc ], [ 64, %bb.bt ] ; 2 uses
  %.094.i.i479 = phi i64 [ %.195.i.i, %bb.cc ], [ 0, %bb.bt ] ; 2 uses
  %.096.i.i478 = phi i64 [ %.197.i.i, %bb.cc ], [ 0, %bb.bt ] ; 2 uses
  %.0100.i.i477 = phi i64 [ %.1101.i.i, %bb.cc ], [ %i.sc, %bb.bt ] ; 4 uses
  %.0104.i.i476 = phi i64 [ %.1105.i.i, %bb.cc ], [ %i.sb, %bb.bt ] ; 4 uses
  %.0108.i.i.in475 = phi i32 [ %.1109.in.i.i, %bb.cc ], [ %i.rz, %bb.bt ] ; 2 uses
  %i.sf = sub i64 %.0.i154490, %.0108.i.i481
  %i.sg = icmp ugt i64 %i.sf, %i.rq
  %i.sh = icmp eq i64 %.093.i.i480, 0
  %or.cond.i.i = select i1 %i.sg, i1 true, i1 %i.sh
  br i1 %or.cond.i.i, label %._crit_edge484, label %bb.bu

._crit_edge484:                                   ; preds = %bb.cc, %.lr.ph483, %bb.bt
  %.0104.i.i.lcssa = phi i64 [ %i.sb, %bb.bt ], [ %.0104.i.i476, %.lr.ph483 ], [ %.1105.i.i, %bb.cc ]
  %.0100.i.i.lcssa = phi i64 [ %i.sc, %bb.bt ], [ %.0100.i.i477, %.lr.ph483 ], [ %.1101.i.i, %bb.cc ]
  %i.si = load i32, ptr %i.av, align 8, !tbaa !78, !alias.scope !155 ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.0104.i.i.lcssa
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !21, !noalias !160
  br label %StoreH10.exit

bb.bu:                                            ; preds = %.lr.ph483
  %i.sk = and i64 %4, %.0108.i.i481
  %i.sl = call i64 @llvm.umin.i64(i64 %.096.i.i478, i64 %.094.i.i479) ; 5 uses
  %i.sm = getelementptr i8, ptr %i.ru, i64 %i.sl  ; 4 uses
  %i.sn = getelementptr i8, ptr %3, i64 %i.sk     ; 2 uses
  %i.so = getelementptr i8, ptr %i.sn, i64 %i.sl  ; 2 uses
  %i.sp = sub nuw nsw i64 128, %i.sl              ; 2 uses
  %i.sq = icmp ult i64 %i.sl, 121
  br i1 %i.sq, label %.lr.ph462, label %.preheader330

.preheader330:                                    ; preds = %bb.bw, %bb.bu
  %.026.i.i.i.lcssa = phi ptr [ %i.sm, %bb.bu ], [ %i.sz, %bb.bw ] ; 3 uses
  %.024.i.i.i.lcssa = phi ptr [ %i.so, %bb.bu ], [ %i.sy, %bb.bw ]
  %.022.i.i.i.lcssa = phi i64 [ %i.sp, %bb.bu ], [ %i.ta, %bb.bw ] ; 3 uses
  %.not.i.i.i466 = icmp eq i64 %.022.i.i.i.lcssa, 0
  br i1 %.not.i.i.i466, label %.critedge.i.i.i, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %.preheader330
  %scevgep588 = getelementptr i8, ptr %.026.i.i.i.lcssa, i64 %.022.i.i.i.lcssa
  br label %.lr.ph470

.lr.ph462:                                        ; preds = %bb.bu, %bb.bw
  %.022.i.i.i460 = phi i64 [ %i.ta, %bb.bw ], [ %i.sp, %bb.bu ]
  %.024.i.i.i459 = phi ptr [ %i.sy, %bb.bw ], [ %i.so, %bb.bu ] ; 2 uses
  %.026.i.i.i458 = phi ptr [ %i.sz, %bb.bw ], [ %i.sm, %bb.bu ] ; 3 uses
  %.0.copyload.i5.i = load i64, ptr %.024.i.i.i459, align 1, !alias.scope !156, !noalias !161 ; 2 uses
  %.0.copyload.i.i190 = load i64, ptr %.026.i.i.i458, align 1, !alias.scope !156, !noalias !161 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %.0.copyload.i5.i, %.0.copyload.i.i190
  br i1 %.not30.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph462
  %i.sr = xor i64 %.0.copyload.i.i190, %.0.copyload.i5.i
  %i.ss = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sr, i1 true)
  %i.st = ptrtoint ptr %.026.i.i.i458 to i64
  %i.su = ptrtoint ptr %i.sm to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = lshr i64 %i.ss, 3
  %i.sx = add i64 %i.sv, %i.sw
  br label %FindMatchLengthWithLimit.exit.i.i

bb.bw:                                            ; preds = %.lr.ph462
  %i.sy = getelementptr inbounds nuw i8, ptr %.024.i.i.i459, i64 8 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.026.i.i.i458, i64 8 ; 2 uses
  %i.ta = add i64 %.022.i.i.i460, -8              ; 3 uses
  %i.tb = icmp ugt i64 %i.ta, 7
  br i1 %i.tb, label %.lr.ph462, label %.preheader330, !llvm.loop !1

.lr.ph470:                                        ; preds = %.lr.ph470.preheader, %bb.bx
  %.123.i.i.i469 = phi i64 [ %i.tf, %bb.bx ], [ %.022.i.i.i.lcssa, %.lr.ph470.preheader ]
  %.125.i.i.i468 = phi ptr [ %i.tg, %bb.bx ], [ %.024.i.i.i.lcssa, %.lr.ph470.preheader ] ; 2 uses
  %.228.i.i.i467 = phi ptr [ %i.th, %bb.bx ], [ %.026.i.i.i.lcssa, %.lr.ph470.preheader ] ; 3 uses
  %i.tc = load i8, ptr %.228.i.i.i467, align 1, !tbaa !22, !alias.scope !162
  %i.td = load i8, ptr %.125.i.i.i468, align 1, !tbaa !22, !alias.scope !162
  %i.te = icmp eq i8 %i.tc, %i.td
  br i1 %i.te, label %bb.bx, label %.critedge.i.i.i

bb.bx:                                            ; preds = %.lr.ph470
  %i.tf = add nsw i64 %.123.i.i.i469, -1          ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.125.i.i.i468, i64 1
  %i.th = getelementptr inbounds nuw i8, ptr %.228.i.i.i467, i64 1
  %.not.i.i.i = icmp eq i64 %i.tf, 0
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph470, !llvm.loop !2

.critedge.i.i.i:                                  ; preds = %bb.bx, %.lr.ph470, %.preheader330
  %.228.i.i.i.lcssa = phi ptr [ %.026.i.i.i.lcssa, %.preheader330 ], [ %.228.i.i.i467, %.lr.ph470 ], [ %scevgep588, %bb.bx ]
  %i.ti = ptrtoint ptr %.228.i.i.i.lcssa to i64
  %i.tj = ptrtoint ptr %i.sm to i64
  %i.tk = sub i64 %i.ti, %i.tj
  br label %FindMatchLengthWithLimit.exit.i.i

FindMatchLengthWithLimit.exit.i.i:                ; preds = %bb.bv, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.sx, %bb.bv ], [ %i.tk, %.critedge.i.i.i ]
  %i.tl = add i64 %.2.i.i.i, %i.sl                ; 5 uses
  %.not118.i.i = icmp ult i64 %i.tl, 128
  br i1 %.not118.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i
  %i.tm = and i64 %.0108.i.i481, %i.rp
  %.idx649 = shl nuw nsw i64 %i.tm, 3
  %i.tn = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.idx649 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !21, !noalias !160
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.0104.i.i476
  store i32 %i.to, ptr %i.tp, align 4, !tbaa !21, !noalias !160
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !21, !noalias !160
  br label %StoreH10.exit

bb.bz:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i
end_hunk_0
begin_hunk_1_@BrotliCreateHqZopfliBackwardReferences:bb.a
bb.ax:                                            ; preds = %FindAllMatchesH10.exit
  %i.id = load i64, ptr %i.al, align 8, !tbaa !79
  %i.ie = getelementptr i8, ptr %i.cj, i64 -512   ; 4 uses
  %i.if = load i64, ptr %i.v, align 8, !tbaa !55, !noalias !240
  %.0.copyload.i93.i = load i64, ptr %i.hc, align 1, !alias.scope !241
  %.neg422 = add i64 %i.if, %i.bb
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.bl
  %.0.i231555 = phi i64 [ 0, %bb.ax ], [ %i.ly, %bb.bl ] ; 3 uses
  %.026.i554 = phi i64 [ 0, %bb.ax ], [ %i.me, %bb.bl ] ; 3 uses
  %.027.i553 = phi i64 [ 3, %bb.ax ], [ %.128.i, %bb.bl ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.026.i554
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !81, !noalias !240 ; 7 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.026.i554
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !47, !noalias !240
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.0.i231555
  %i.il = sub i64 64, %.0.i231555                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !83, !noalias !241
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !84, !noalias !241
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !85, !noalias !241 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !86, !noalias !241 ; 2 uses
  %i.iu = sub i32 64, %i.ir
  %i.iv = sub i32 32, %i.it
  %i.iw = lshr i32 -1, %i.iv
  %i.ix = sub i32 64, %i.ip
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = lshr i64 -1, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 24 ; 2 uses
  %i.jb = zext nneg i32 %i.it to i64
  %i.jc = shl nuw i64 1, %i.jb
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jc ; 2 uses
  %i.je = zext nneg i32 %i.ir to i64
  %i.jf = shl nuw i64 1, %i.je
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jf ; 2 uses
  %i.jh = and i64 %.0.copyload.i93.i, %i.iz
  %i.ji = mul i64 %i.jh, 2297779722762296275
  %i.jj = zext nneg i32 %i.iu to i64
  %i.jk = lshr i64 %i.ji, %i.jj                   ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = and i32 %i.iw, %i.jl
  %i.jn = and i64 %i.jk, 4294967295
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.jn
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !53, !noalias !241 ; 2 uses
  %i.jq = zext i16 %i.jp to i32
  %i.jr = zext i32 %i.jm to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !21, !noalias !241
  %i.ju = add i32 %i.jt, %i.jq
  %i.jv = zext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jv
  %.not636 = icmp eq i16 %i.jp, -1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !87, !noalias !241
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jz ; 2 uses
  %i.kb = load i32, ptr %i.ih, align 4, !tbaa !88, !noalias !241
  %i.kc = icmp eq i32 %i.kb, -558043680
  br i1 %i.kc, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.0.copyload.i268 = load ptr, ptr %i.ka, align 1, !noalias !241
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
  %i.ke = load i32, ptr %.077.i546, align 4, !tbaa !21, !noalias !241 ; 2 uses
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
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !22, !alias.scope !241
  %i.kr = getelementptr i8, ptr %.081.i, i64 %.078.i545
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kh
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !22, !noalias !241
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
  %.0.copyload.i92.i = load i64, ptr %.024.i.i253529, align 1, !alias.scope !241 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %.026.i.i252528, align 1, !noalias !241 ; 2 uses
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
  %i.lh = load i8, ptr %.228.i.i256537, align 1, !tbaa !22, !noalias !241
  %i.li = load i8, ptr %.125.i.i257538, align 1, !tbaa !22, !alias.scope !241
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
  store i32 %i.ls, ptr %.082.i544, align 4, !tbaa !71, !noalias !241
  %.tr.i.i263 = trunc i64 %.2.i.i262 to i32
  %i.lt = shl i32 %.tr.i.i263, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %.082.i544, i64 4
  store i32 %i.lt, ptr %i.lu, align 4, !tbaa !72, !noalias !241
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
  %i.mj = and i64 %.024.lcssa.i, 3
  %i.mk = shl i64 %n.vec875, 3                    ; 2 uses
  %i.ml = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mk
  %i.mm = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mk ; 2 uses
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph874
  %index877 = phi i64 [ 0, %vector.ph874 ], [ %index.next882, %vector.body876 ] ; 2 uses
  %i.mn = shl i64 %index877, 3                    ; 2 uses
  %next.gep878 = getelementptr i8, ptr %.027.lcssa.i, i64 %i.mn ; 2 uses
  %next.gep879 = getelementptr i8, ptr %.030.lcssa.i, i64 %i.mn ; 2 uses
  %i.mo = getelementptr i8, ptr %next.gep878, i64 16
  %wide.load880 = load <2 x i64>, ptr %next.gep878, align 4, !tbaa !21
  %wide.load881 = load <2 x i64>, ptr %i.mo, align 4, !tbaa !21
  %i.mp = getelementptr i8, ptr %next.gep879, i64 16
  store <2 x i64> %wide.load880, ptr %next.gep879, align 4, !tbaa !21
  store <2 x i64> %wide.load881, ptr %i.mp, align 4, !tbaa !21
  %index.next882 = add nuw i64 %index877, 4       ; 2 uses
  %i.mq = icmp eq i64 %index.next882, %n.vec875
  br i1 %i.mq, label %middle.block883, label %vector.body876, !llvm.loop !200

middle.block883:                                  ; preds = %vector.body876
  %cmp.n884 = icmp eq i64 %.024.lcssa.i, %n.vec875
  br i1 %cmp.n884, label %.preheader.i, label %.lr.ph50.i.preheader905

.lr.ph50.i.preheader905:                          ; preds = %.lr.ph50.i.preheader, %middle.block883
  %.22649.i.ph = phi i64 [ %.024.lcssa.i, %.lr.ph50.i.preheader ], [ %i.mj, %middle.block883 ] ; 4 uses
  %.22948.i.ph = phi ptr [ %.027.lcssa.i, %.lr.ph50.i.preheader ], [ %i.ml, %middle.block883 ] ; 2 uses
  %.23247.i.ph = phi ptr [ %.030.lcssa.i, %.lr.ph50.i.preheader ], [ %i.mm, %middle.block883 ] ; 2 uses
  %i.mr = add i64 %.22649.i.ph, -1
  %xtraiter = and i64 %.22649.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader905, %.lr.ph50.i.prol
  %.22649.i.prol = phi i64 [ %i.ms, %.lr.ph50.i.prol ], [ %.22649.i.ph, %.lr.ph50.i.preheader905 ]
  %.22948.i.prol = phi ptr [ %i.mu, %.lr.ph50.i.prol ], [ %.22948.i.ph, %.lr.ph50.i.preheader905 ] ; 2 uses
  %.23247.i.prol = phi ptr [ %i.mt, %.lr.ph50.i.prol ], [ %.23247.i.ph, %.lr.ph50.i.preheader905 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader905 ]
  %i.ms = add i64 %.22649.i.prol, -1              ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.23247.i.prol, i64 8 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.22948.i.prol, i64 8 ; 2 uses
  %i.mv = load i64, ptr %.22948.i.prol, align 4, !tbaa !21
  store i64 %i.mv, ptr %.23247.i.prol, align 4, !tbaa !21
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !201

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader905
  %.lcssa928.unr = phi ptr [ poison, %.lr.ph50.i.preheader905 ], [ %i.mt, %.lr.ph50.i.prol ]
  %.22649.i.unr = phi i64 [ %.22649.i.ph, %.lr.ph50.i.preheader905 ], [ %i.ms, %.lr.ph50.i.prol ]
  %.22948.i.unr = phi ptr [ %.22948.i.ph, %.lr.ph50.i.preheader905 ], [ %i.mu, %.lr.ph50.i.prol ]
  %.23247.i.unr = phi ptr [ %.23247.i.ph, %.lr.ph50.i.preheader905 ], [ %i.mt, %.lr.ph50.i.prol ]
  %i.mw = icmp ult i64 %i.mr, 7
  br i1 %i.mw, label %.preheader.i, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %LookupAllCompoundDictionaryMatches.exit, %bb.bq
  %.041.i = phi i64 [ %.1.i321, %bb.bq ], [ %i.ib, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02140.i = phi ptr [ %.122.i, %bb.bq ], [ %i.cj, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.02439.i = phi i64 [ %.125.i320, %bb.bq ], [ %i.ly, %LookupAllCompoundDictionaryMatches.exit ] ; 2 uses
  %.02738.i = phi ptr [ %.128.i319, %bb.bq ], [ %i.ie, %LookupAllCompoundDictionaryMatches.exit ] ; 5 uses
  %.03037.i = phi ptr [ %.131.i, %bb.bq ], [ %i.ci, %LookupAllCompoundDictionaryMatches.exit ] ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.02738.i, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !72
  %i.mz = lshr i32 %i.my, 5                       ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.02140.i, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !72
  %i.nc = lshr i32 %i.nb, 5                       ; 2 uses
  %i.nd = icmp samesign ult i32 %i.mz, %i.nc
  br i1 %i.nd, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i
  %i.ne = icmp eq i32 %i.mz, %i.nc
  br i1 %i.ne, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.nf = load i32, ptr %.02738.i, align 4, !tbaa !71
  %i.ng = load i32, ptr %.02140.i, align 4, !tbaa !71
  %i.nh = icmp ult i32 %i.nf, %i.ng
  br i1 %i.nh, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %.lr.ph.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.02738.i, i64 8
  %i.nj = load i64, ptr %.02738.i, align 4, !tbaa !21
  store i64 %i.nj, ptr %.03037.i, align 4, !tbaa !21
  %i.nk = add i64 %.02439.i, -1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.nl = getelementptr inbounds nuw i8, ptr %.02140.i, i64 8
  %i.nm = load i64, ptr %.02140.i, align 4, !tbaa !21
  store i64 %i.nm, ptr %.03037.i, align 4, !tbaa !21
  %i.nn = add i64 %.041.i, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.128.i319 = phi ptr [ %i.ni, %bb.bo ], [ %.02738.i, %bb.bp ] ; 2 uses
  %.125.i320 = phi i64 [ %i.nk, %bb.bo ], [ %.02439.i, %bb.bp ] ; 3 uses
  %.122.i = phi ptr [ %.02140.i, %bb.bo ], [ %i.nl, %bb.bp ] ; 2 uses
  %.1.i321 = phi i64 [ %.041.i, %bb.bo ], [ %i.nn, %bb.bp ] ; 3 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03037.i, i64 8 ; 2 uses
  %i.no = icmp ne i64 %.125.i320, 0
  %i.np = icmp ne i64 %.1.i321, 0
  %i.nq = select i1 %i.no, i1 %i.np, i1 false
  br i1 %i.nq, label %.lr.ph.i, label %.preheader36.i, !llvm.loop !7

.preheader.i:                                     ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block883, %.preheader36.i
  %.232.lcssa.i = phi ptr [ %.030.lcssa.i, %.preheader36.i ], [ %i.mm, %middle.block883 ], [ %.lcssa928.unr, %.lr.ph50.i.prol.loopexit ], [ %i.pc, %.lr.ph50.i ] ; 4 uses
  %.not3552.i = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not3552.i, label %MergeMatches.exit, label %.lr.ph56.i.preheader

.lr.ph56.i.preheader:                             ; preds = %.preheader.i
  %.232.lcssa.i862 = ptrtoaddr ptr %.232.lcssa.i to i64
  %min.iters.check = icmp ult i64 %.0.lcssa.i, 4
  %i.nr = sub i64 %.021.lcssa.i863, %.232.lcssa.i862
  %diff.check = icmp ugt i64 %i.nr, -32
  %or.cond898 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond898, label %.lr.ph56.i.preheader904, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph56.i.preheader
  %n.vec = and i64 %.0.lcssa.i, -4                ; 3 uses
  %i.ns = and i64 %.0.lcssa.i, 3
  %i.nt = shl i64 %n.vec, 3                       ; 2 uses
  %i.nu = getelementptr i8, ptr %.021.lcssa.i, i64 %i.nt
  %i.nv = getelementptr i8, ptr %.232.lcssa.i, i64 %i.nt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.021.lcssa.i, i64 %i.nw ; 2 uses
  %next.gep864 = getelementptr i8, ptr %.232.lcssa.i, i64 %i.nw ; 2 uses
  %i.nx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !tbaa !21
  %wide.load865 = load <2 x i64>, ptr %i.nx, align 4, !tbaa !21
  %i.ny = getelementptr i8, ptr %next.gep864, i64 16
  store <2 x i64> %wide.load, ptr %next.gep864, align 4, !tbaa !21
  store <2 x i64> %wide.load865, ptr %i.ny, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nz = icmp eq i64 %index.next, %n.vec
  br i1 %i.nz, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.lcssa.i, %n.vec
  br i1 %cmp.n, label %MergeMatches.exit, label %.lr.ph56.i.preheader904

.lr.ph56.i.preheader904:                          ; preds = %.lr.ph56.i.preheader, %middle.block
  %.255.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph56.i.preheader ], [ %i.ns, %middle.block ] ; 4 uses
  %.22354.i.ph = phi ptr [ %.021.lcssa.i, %.lr.ph56.i.preheader ], [ %i.nu, %middle.block ] ; 2 uses
  %.353.i.ph = phi ptr [ %.232.lcssa.i, %.lr.ph56.i.preheader ], [ %i.nv, %middle.block ] ; 2 uses
  %i.oa = add i64 %.255.i.ph, -1
  %xtraiter947 = and i64 %.255.i.ph, 7            ; 2 uses
  %lcmp.mod948.not = icmp eq i64 %xtraiter947, 0
  br i1 %lcmp.mod948.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader904, %.lr.ph56.i.prol
  %.255.i.prol = phi i64 [ %i.ob, %.lr.ph56.i.prol ], [ %.255.i.ph, %.lr.ph56.i.preheader904 ]
  %.22354.i.prol = phi ptr [ %i.od, %.lr.ph56.i.prol ], [ %.22354.i.ph, %.lr.ph56.i.preheader904 ] ; 2 uses
  %.353.i.prol = phi ptr [ %i.oc, %.lr.ph56.i.prol ], [ %.353.i.ph, %.lr.ph56.i.preheader904 ] ; 2 uses
  %prol.iter949 = phi i64 [ %prol.iter949.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader904 ]
  %i.ob = add i64 %.255.i.prol, -1                ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.353.i.prol, i64 8 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.22354.i.prol, i64 8 ; 2 uses
  %i.oe = load i64, ptr %.22354.i.prol, align 4, !tbaa !21
  store i64 %i.oe, ptr %.353.i.prol, align 4, !tbaa !21
  %prol.iter949.next = add i64 %prol.iter949, 1   ; 2 uses
  %prol.iter949.cmp.not = icmp eq i64 %prol.iter949.next, %xtraiter947
  br i1 %prol.iter949.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !203

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader904
  %.255.i.unr = phi i64 [ %.255.i.ph, %.lr.ph56.i.preheader904 ], [ %i.ob, %.lr.ph56.i.prol ]
  %.22354.i.unr = phi ptr [ %.22354.i.ph, %.lr.ph56.i.preheader904 ], [ %i.od, %.lr.ph56.i.prol ]
  %.353.i.unr = phi ptr [ %.353.i.ph, %.lr.ph56.i.preheader904 ], [ %i.oc, %.lr.ph56.i.prol ]
  %i.of = icmp ult i64 %i.oa, 7
  br i1 %i.of, label %MergeMatches.exit, label %.lr.ph56.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %.22649.i = phi i64 [ %i.pb, %.lr.ph50.i ], [ %.22649.i.unr, %.lr.ph50.i.prol.loopexit ]
  %.22948.i = phi ptr [ %i.pd, %.lr.ph50.i ], [ %.22948.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.23247.i = phi ptr [ %i.pc, %.lr.ph50.i ], [ %.23247.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.23247.i, i64 8
  %i.oh = getelementptr inbounds nuw i8, ptr %.22948.i, i64 8
  %i.oi = load i64, ptr %.22948.i, align 4, !tbaa !21
  store i64 %i.oi, ptr %.23247.i, align 4, !tbaa !21
  %i.oj = getelementptr inbounds nuw i8, ptr %.23247.i, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %.22948.i, i64 16
  %i.ol = load i64, ptr %i.oh, align 4, !tbaa !21
  store i64 %i.ol, ptr %i.og, align 4, !tbaa !21
  %i.om = getelementptr inbounds nuw i8, ptr %.23247.i, i64 24
  %i.on = getelementptr inbounds nuw i8, ptr %.22948.i, i64 24
  %i.oo = load i64, ptr %i.ok, align 4, !tbaa !21
  store i64 %i.oo, ptr %i.oj, align 4, !tbaa !21
  %i.op = getelementptr inbounds nuw i8, ptr %.23247.i, i64 32
  %i.oq = getelementptr inbounds nuw i8, ptr %.22948.i, i64 32
  %i.or = load i64, ptr %i.on, align 4, !tbaa !21
  store i64 %i.or, ptr %i.om, align 4, !tbaa !21
  %i.os = getelementptr inbounds nuw i8, ptr %.23247.i, i64 40
  %i.ot = getelementptr inbounds nuw i8, ptr %.22948.i, i64 40
  %i.ou = load i64, ptr %i.oq, align 4, !tbaa !21
  store i64 %i.ou, ptr %i.op, align 4, !tbaa !21
  %i.ov = getelementptr inbounds nuw i8, ptr %.23247.i, i64 48
  %i.ow = getelementptr inbounds nuw i8, ptr %.22948.i, i64 48
  %i.ox = load i64, ptr %i.ot, align 4, !tbaa !21
  store i64 %i.ox, ptr %i.os, align 4, !tbaa !21
  %i.oy = getelementptr inbounds nuw i8, ptr %.23247.i, i64 56
  %i.oz = getelementptr inbounds nuw i8, ptr %.22948.i, i64 56
  %i.pa = load i64, ptr %i.ow, align 4, !tbaa !21
  store i64 %i.pa, ptr %i.ov, align 4, !tbaa !21
  %i.pb = add i64 %.22649.i, -8                   ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.23247.i, i64 64 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.22948.i, i64 64
  %i.pe = load i64, ptr %i.oz, align 4, !tbaa !21
  store i64 %i.pe, ptr %i.oy, align 4, !tbaa !21
  %.not.i318.7 = icmp eq i64 %i.pb, 0
  br i1 %.not.i318.7, label %.preheader.i, label %.lr.ph50.i, !llvm.loop !204

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
  %.255.i = phi i64 [ %i.qa, %.lr.ph56.i ], [ %.255.i.unr, %.lr.ph56.i.prol.loopexit ]
  %.22354.i = phi ptr [ %i.qc, %.lr.ph56.i ], [ %.22354.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %.353.i = phi ptr [ %i.qb, %.lr.ph56.i ], [ %.353.i.unr, %.lr.ph56.i.prol.loopexit ] ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.353.i, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %.22354.i, i64 8
  %i.ph = load i64, ptr %.22354.i, align 4, !tbaa !21
  store i64 %i.ph, ptr %.353.i, align 4, !tbaa !21
  %i.pi = getelementptr inbounds nuw i8, ptr %.353.i, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %.22354.i, i64 16
  %i.pk = load i64, ptr %i.pg, align 4, !tbaa !21
  store i64 %i.pk, ptr %i.pf, align 4, !tbaa !21
  %i.pl = getelementptr inbounds nuw i8, ptr %.353.i, i64 24
  %i.pm = getelementptr inbounds nuw i8, ptr %.22354.i, i64 24
  %i.pn = load i64, ptr %i.pj, align 4, !tbaa !21
  store i64 %i.pn, ptr %i.pi, align 4, !tbaa !21
  %i.po = getelementptr inbounds nuw i8, ptr %.353.i, i64 32
  %i.pp = getelementptr inbounds nuw i8, ptr %.22354.i, i64 32
  %i.pq = load i64, ptr %i.pm, align 4, !tbaa !21
  store i64 %i.pq, ptr %i.pl, align 4, !tbaa !21
  %i.pr = getelementptr inbounds nuw i8, ptr %.353.i, i64 40
  %i.ps = getelementptr inbounds nuw i8, ptr %.22354.i, i64 40
  %i.pt = load i64, ptr %i.pp, align 4, !tbaa !21
  store i64 %i.pt, ptr %i.po, align 4, !tbaa !21
  %i.pu = getelementptr inbounds nuw i8, ptr %.353.i, i64 48
  %i.pv = getelementptr inbounds nuw i8, ptr %.22354.i, i64 48
  %i.pw = load i64, ptr %i.ps, align 4, !tbaa !21
  store i64 %i.pw, ptr %i.pr, align 4, !tbaa !21
  %i.px = getelementptr inbounds nuw i8, ptr %.353.i, i64 56
  %i.py = getelementptr inbounds nuw i8, ptr %.22354.i, i64 56
  %i.pz = load i64, ptr %i.pv, align 4, !tbaa !21
  store i64 %i.pz, ptr %i.pu, align 4, !tbaa !21
  %i.qa = add i64 %.255.i, -8                     ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.353.i, i64 64
  %i.qc = getelementptr inbounds nuw i8, ptr %.22354.i, i64 64
  %i.qd = load i64, ptr %i.py, align 4, !tbaa !21
  store i64 %i.qd, ptr %i.px, align 4, !tbaa !21
  %.not35.i.7 = icmp eq i64 %i.qa, 0
  br i1 %.not35.i.7, label %MergeMatches.exit, label %.lr.ph56.i, !llvm.loop !205

MergeMatches.exit:                                ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i, %middle.block, %.preheader.i
  %i.qe = add i64 %i.ly, %i.ib
  br label %bb.br

bb.br:                                            ; preds = %MergeMatches.exit, %FindAllMatchesH10.exit
  %.0201 = phi i64 [ %i.qe, %MergeMatches.exit ], [ %i.ib, %FindAllMatchesH10.exit ] ; 3 uses
  %i.qf = trunc i64 %.0201 to i32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0203629 ; 3 uses
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !21
  %.not230 = icmp eq i64 %.0201, 0
  br i1 %.not230, label %bb.co, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qh = add i64 %.0201, %.0205628               ; 2 uses
  %i.qi = getelementptr [8 x i8], ptr %.1, i64 %i.qh ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 -4
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !72 ; 2 uses
  %i.ql = icmp ugt i32 %i.qk, 10431
  br i1 %i.ql, label %bb.bt, label %bb.co

bb.bt:                                            ; preds = %bb.bs
  %i.qm = lshr i32 %i.qk, 5
  %i.qn = zext nneg i32 %i.qm to i64              ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qi, i64 -8
  %i.qp = add nsw i64 %i.qn, -1                   ; 2 uses
  %i.qq = add i64 %.0205628, 1
  %i.qr = load i64, ptr %i.qo, align 4, !tbaa !21
  store i64 %i.qr, ptr %i.ci, align 4, !tbaa !21
  store i32 1, ptr %i.qg, align 4, !tbaa !21
  %i.qs = add i64 %i.ay, 1                        ; 3 uses
  %i.qt = add i64 %i.ay, %i.qn
  %i.qu = call i64 @llvm.umin.i64(i64 %i.qt, i64 %i.p) ; 4 uses
  %i.qv = add i64 %i.ay, 64
  %.not.i233 = icmp ugt i64 %i.qv, %i.qu
  %i.qw = add i64 %i.qu, -63
  %spec.select.i234 = select i1 %.not.i233, i64 %i.qs, i64 %i.qw ; 5 uses
  %i.qx = add i64 %i.ay, 513
  %.not22.i = icmp ule i64 %i.qx, %spec.select.i234
  %i.qy = icmp ult i64 %i.qs, %spec.select.i234
  %or.cond = and i1 %.not22.i, %i.qy
  br i1 %or.cond, label %.lr.ph590, label %.loopexit

.lr.ph590:                                        ; preds = %bb.bt
  %i.qz = load i64, ptr %i.ae, align 8, !tbaa !77, !alias.scope !242 ; 4 uses
  %i.ra = add i64 %i.qz, -15
  %i.rb = load ptr, ptr %i.ah, align 8, !tbaa !75, !alias.scope !243
  %i.rc = load ptr, ptr %i.ai, align 8, !tbaa !76, !alias.scope !243 ; 7 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph590, %StoreH10.exit
  %.0.i235588 = phi i64 [ %i.qs, %.lr.ph590 ], [ %i.tp, %StoreH10.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.rd = and i64 %.0.i235588, %4
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 %i.rd ; 3 uses
  %.val316 = load i32, ptr %i.re, align 1
  %i.rf = mul i32 %.val316, 506832829
  %i.rg = lshr i32 %i.rf, 15
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rh ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !21, !noalias !247 ; 2 uses
  %i.rk = and i64 %i.qz, %.0.i235588
  %i.rl = shl i64 %i.rk, 1                        ; 3 uses
  %i.rm = or disjoint i64 %i.rl, 1                ; 2 uses
  %i.rn = trunc i64 %.0.i235588 to i32
  store i32 %i.rn, ptr %i.ri, align 4, !tbaa !21, !noalias !248
  %.0108.i.i572 = zext i32 %i.rj to i64           ; 2 uses
  %i.ro = icmp eq i64 %.0.i235588, %.0108.i.i572
  br i1 %i.ro, label %._crit_edge582, label %.lr.ph581

.lr.ph581:                                        ; preds = %bb.bu, %bb.cd
  %.0108.i.i579 = phi i64 [ %.0108.i.i, %bb.cd ], [ %.0108.i.i572, %bb.bu ] ; 4 uses
  %.093.i.i578 = phi i64 [ %i.tm, %bb.cd ], [ 64, %bb.bu ] ; 2 uses
  %.094.i.i577 = phi i64 [ %.195.i.i, %bb.cd ], [ 0, %bb.bu ] ; 2 uses
  %.096.i.i576 = phi i64 [ %.197.i.i, %bb.cd ], [ 0, %bb.bu ] ; 2 uses
  %.0100.i.i575 = phi i64 [ %.1101.i.i, %bb.cd ], [ %i.rm, %bb.bu ] ; 4 uses
  %.0104.i.i574 = phi i64 [ %.1105.i.i, %bb.cd ], [ %i.rl, %bb.bu ] ; 4 uses
  %.0108.i.i.in573 = phi i32 [ %.1109.in.i.i, %bb.cd ], [ %i.rj, %bb.bu ] ; 2 uses
  %i.rp = sub i64 %.0.i235588, %.0108.i.i579
  %i.rq = icmp ugt i64 %i.rp, %i.ra
  %i.rr = icmp eq i64 %.093.i.i578, 0
  %or.cond.i.i = select i1 %i.rq, i1 true, i1 %i.rr
  br i1 %or.cond.i.i, label %._crit_edge582, label %bb.bv

._crit_edge582:                                   ; preds = %bb.cd, %.lr.ph581, %bb.bu
  %.0104.i.i.lcssa = phi i64 [ %i.rl, %bb.bu ], [ %.0104.i.i574, %.lr.ph581 ], [ %.1105.i.i, %bb.cd ]
  %.0100.i.i.lcssa = phi i64 [ %i.rm, %bb.bu ], [ %.0100.i.i575, %.lr.ph581 ], [ %.1101.i.i, %bb.cd ]
  %i.rs = load i32, ptr %i.aj, align 8, !tbaa !78, !alias.scope !243 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0104.i.i.lcssa
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !21, !noalias !248
  br label %StoreH10.exit

bb.bv:                                            ; preds = %.lr.ph581
  %i.ru = and i64 %4, %.0108.i.i579
  %i.rv = call i64 @llvm.umin.i64(i64 %.096.i.i576, i64 %.094.i.i577) ; 5 uses
  %i.rw = getelementptr i8, ptr %i.re, i64 %i.rv  ; 4 uses
  %i.rx = getelementptr i8, ptr %3, i64 %i.ru     ; 2 uses
  %i.ry = getelementptr i8, ptr %i.rx, i64 %i.rv  ; 2 uses
  %i.rz = sub nuw nsw i64 128, %i.rv              ; 2 uses
  %i.sa = icmp ult i64 %i.rv, 121
  br i1 %i.sa, label %.lr.ph560, label %.preheader426

.preheader426:                                    ; preds = %bb.bx, %bb.bv
  %.026.i.i.i.lcssa = phi ptr [ %i.rw, %bb.bv ], [ %i.sj, %bb.bx ] ; 3 uses
  %.024.i.i.i.lcssa = phi ptr [ %i.ry, %bb.bv ], [ %i.si, %bb.bx ]
  %.022.i.i.i.lcssa = phi i64 [ %i.rz, %bb.bv ], [ %i.sk, %bb.bx ] ; 3 uses
  %.not.i.i.i564 = icmp eq i64 %.022.i.i.i.lcssa, 0
  br i1 %.not.i.i.i564, label %.critedge.i.i.i, label %.lr.ph568.preheader

.lr.ph568.preheader:                              ; preds = %.preheader426
  %scevgep684 = getelementptr i8, ptr %.026.i.i.i.lcssa, i64 %.022.i.i.i.lcssa
  br label %.lr.ph568

.lr.ph560:                                        ; preds = %bb.bv, %bb.bx
  %.022.i.i.i558 = phi i64 [ %i.sk, %bb.bx ], [ %i.rz, %bb.bv ]
  %.024.i.i.i557 = phi ptr [ %i.si, %bb.bx ], [ %i.ry, %bb.bv ] ; 2 uses
  %.026.i.i.i556 = phi ptr [ %i.sj, %bb.bx ], [ %i.rw, %bb.bv ] ; 3 uses
  %.0.copyload.i5.i = load i64, ptr %.024.i.i.i557, align 1, !alias.scope !244, !noalias !249 ; 2 uses
  %.0.copyload.i.i271 = load i64, ptr %.026.i.i.i556, align 1, !alias.scope !244, !noalias !249 ; 2 uses
  %.not30.i.i.i = icmp eq i64 %.0.copyload.i5.i, %.0.copyload.i.i271
  br i1 %.not30.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph560
  %i.sb = xor i64 %.0.copyload.i.i271, %.0.copyload.i5.i
  %i.sc = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.sb, i1 true)
  %i.sd = ptrtoint ptr %.026.i.i.i556 to i64
  %i.se = ptrtoint ptr %i.rw to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = lshr i64 %i.sc, 3
  %i.sh = add i64 %i.sf, %i.sg
  br label %FindMatchLengthWithLimit.exit.i.i

bb.bx:                                            ; preds = %.lr.ph560
  %i.si = getelementptr inbounds nuw i8, ptr %.024.i.i.i557, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.026.i.i.i556, i64 8 ; 2 uses
  %i.sk = add i64 %.022.i.i.i558, -8              ; 3 uses
  %i.sl = icmp ugt i64 %i.sk, 7
  br i1 %i.sl, label %.lr.ph560, label %.preheader426, !llvm.loop !1

.lr.ph568:                                        ; preds = %.lr.ph568.preheader, %bb.by
  %.123.i.i.i567 = phi i64 [ %i.sp, %bb.by ], [ %.022.i.i.i.lcssa, %.lr.ph568.preheader ]
  %.125.i.i.i566 = phi ptr [ %i.sq, %bb.by ], [ %.024.i.i.i.lcssa, %.lr.ph568.preheader ] ; 2 uses
  %.228.i.i.i565 = phi ptr [ %i.sr, %bb.by ], [ %.026.i.i.i.lcssa, %.lr.ph568.preheader ] ; 3 uses
  %i.sm = load i8, ptr %.228.i.i.i565, align 1, !tbaa !22, !alias.scope !250
  %i.sn = load i8, ptr %.125.i.i.i566, align 1, !tbaa !22, !alias.scope !250
  %i.so = icmp eq i8 %i.sm, %i.sn
  br i1 %i.so, label %bb.by, label %.critedge.i.i.i

bb.by:                                            ; preds = %.lr.ph568
  %i.sp = add nsw i64 %.123.i.i.i567, -1          ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.125.i.i.i566, i64 1
  %i.sr = getelementptr inbounds nuw i8, ptr %.228.i.i.i565, i64 1
  %.not.i.i.i = icmp eq i64 %i.sp, 0
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %.lr.ph568, !llvm.loop !2

.critedge.i.i.i:                                  ; preds = %bb.by, %.lr.ph568, %.preheader426
  %.228.i.i.i.lcssa = phi ptr [ %.026.i.i.i.lcssa, %.preheader426 ], [ %.228.i.i.i565, %.lr.ph568 ], [ %scevgep684, %bb.by ]
  %i.ss = ptrtoint ptr %.228.i.i.i.lcssa to i64
  %i.st = ptrtoint ptr %i.rw to i64
  %i.su = sub i64 %i.ss, %i.st
  br label %FindMatchLengthWithLimit.exit.i.i

FindMatchLengthWithLimit.exit.i.i:                ; preds = %bb.bw, %.critedge.i.i.i
  %.2.i.i.i = phi i64 [ %i.sh, %bb.bw ], [ %i.su, %.critedge.i.i.i ]
  %i.sv = add i64 %.2.i.i.i, %i.rv                ; 5 uses
  %.not118.i.i = icmp ult i64 %i.sv, 128
  br i1 %.not118.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i
  %i.sw = and i64 %.0108.i.i579, %i.qz
  %.idx757 = shl nuw nsw i64 %i.sw, 3
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rc, i64 %.idx757 ; 2 uses
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !21, !noalias !248
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0104.i.i574
  store i32 %i.sy, ptr %i.sz, align 4, !tbaa !21, !noalias !248
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !21, !noalias !248
  br label %StoreH10.exit

bb.ca:                                            ; preds = %FindMatchLengthWithLimit.exit.i.i
  %i.tc = getelementptr i8, ptr %i.re, i64 %i.sv
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !22, !alias.scope !250
  %i.te = getelementptr i8, ptr %i.rx, i64 %i.sv
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !22, !alias.scope !250
  %i.tg = icmp ugt i8 %i.td, %i.tf
  %i.th = and i64 %.0108.i.i579, %i.qz
  %i.ti = shl nuw nsw i64 %i.th, 1                ; 3 uses
  br i1 %i.tg, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0104.i.i574
  store i32 %.0108.i.i.in573, ptr %i.tj, align 4, !tbaa !21, !noalias !248
  %i.tk = or disjoint i64 %i.ti, 1                ; 2 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %.0100.i.i575
  store i32 %.0108.i.i.in573, ptr %i.tl, align 4, !tbaa !21, !noalias !248
  br label %bb.cd

end_hunk_1
