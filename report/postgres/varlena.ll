inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@varstr_levenshtein_less_equal:bb.a

bb.i:                                             ; preds = %bb.h
  %i.p = sub i32 %i.f, %i.e                       ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  %i.r = mul i32 %5, %i.p
  %i.s = sub i32 0, %i.r
  %i.t = mul i32 %i.p, %4
  %i.u = select i1 %i.q, i32 %i.s, i32 %i.t       ; 3 uses
  %.not304 = icmp sgt i32 %i.u, %7
  br i1 %.not304, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add i32 %5, %4                           ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %6) ; 4 uses
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.f)
  %i.x = mul i32 %i.w, %spec.select
  %i.y = add i32 %i.u, %i.x
  %.not303 = icmp slt i32 %7, %i.y
  br i1 %.not303, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.aa = sub i32 %7, %i.u
  %i.ab = sdiv i32 %i.aa, %i.v
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.p, i32 0)
  %i.ad = sub i32 %i.ab, %i.ac
  %i.ae = add i32 %i.ad, 1                        ; 2 uses
  %i.af = icmp sgt i32 %i.ae, %i.e
  %spec.select313 = select i1 %i.af, i32 %i.n, i32 %i.ae
  br label %.thread

bb.m:                                             ; preds = %bb.i
  %i.ag = add nuw nsw i32 %7, 1
  br label %.loopexit338

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l, %bb.h
  %.2274 = phi i32 [ %6, %bb.h ], [ %spec.select, %bb.l ], [ %spec.select, %bb.k ], [ %spec.select, %bb.j ] ; 3 uses
  %.2271 = phi i32 [ %7, %bb.h ], [ %7, %bb.l ], [ %7, %bb.k ], [ -1, %bb.j ] ; 4 uses
  %.3249 = phi i32 [ %i.n, %bb.h ], [ %spec.select313, %bb.l ], [ %i.n, %bb.k ], [ %i.n, %bb.j ] ; 4 uses
  %.not305 = icmp eq i32 %i.e, %1
  %.not306 = icmp eq i32 %i.f, %3                 ; 2 uses
  %or.cond314 = select i1 %.not305, i1 %.not306, i1 false
  %.pre = sext i32 %i.n to i64                    ; 2 uses
  br i1 %or.cond314, label %.thread._crit_edge, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.ah = shl nsw i64 %.pre, 2
  %i.ai = tail call ptr @palloc(i64 noundef %i.ah) #18 ; 3 uses
  %i.aj = icmp sgt i32 %i.e, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0241341 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.ak = tail call i32 @pg_mblen_range(ptr noundef %.0241341, ptr noundef %i.b) #18 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds i8, ptr %.0241341, i64 %i.am
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ao = zext nneg i32 %i.e to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.n, %._crit_edge.loopexit
  %.0242.lcssa = phi i64 [ %i.ao, %._crit_edge.loopexit ], [ 0, %bb.n ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.0242.lcssa
  store i32 0, ptr %i.ap, align 4
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %._crit_edge
  %.0259 = phi ptr [ %i.ai, %._crit_edge ], [ null, %.thread ] ; 3 uses
  %i.aq = add i32 %i.f, 1
  %i.ar = shl i32 %i.n, 1
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 2
  %i.au = tail call ptr @palloc(i64 noundef %i.at) #18 ; 5 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %.pre
  %i.aw = icmp sgt i32 %.3249, 0
  br i1 %i.aw, label %.lr.ph344.preheader, label %.preheader337

.lr.ph344.preheader:                              ; preds = %.thread._crit_edge
  %wide.trip.count379 = zext nneg i32 %.3249 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.3249, 8
  br i1 %min.iters.check, label %.lr.ph344.preheader489, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph344.preheader
  %n.vec = and i64 %wide.trip.count379, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ax = mul <4 x i32> %broadcast.splat, %vec.ind
  %i.ay = mul <4 x i32> %broadcast.splat, %step.add
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %i.ax, ptr %i.az, align 4
  store <4 x i32> %i.ay, ptr %i.ba, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count379
  br i1 %cmp.n, label %.preheader337, label %.lr.ph344.preheader489

.lr.ph344.preheader489:                           ; preds = %.lr.ph344.preheader, %middle.block
  %indvars.iv376.ph = phi i64 [ 0, %.lr.ph344.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph344

.preheader337:                                    ; preds = %.lr.ph344, %middle.block, %.thread._crit_edge
  %i.bc = icmp sgt i32 %i.aq, 1
  br i1 %i.bc, label %.lr.ph370, label %._crit_edge371

.lr.ph370:                                        ; preds = %.preheader337
  %i.bd = add nsw i32 %.2271, 1                   ; 5 uses
  %.not308 = icmp eq ptr %.0259, null             ; 2 uses
  %i.be = icmp sgt i32 %.2271, -1
  %.neg = sub i32 %i.e, %i.f
  %broadcast.splatinsert463.a = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat464.a = shufflevector <4 x i32> %broadcast.splatinsert463.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert465 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat466 = shufflevector <4 x i32> %broadcast.splatinsert465, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert467 = insertelement <4 x i32> poison, i32 %.2274, i64 0
  %broadcast.splat468 = shufflevector <4 x i32> %broadcast.splatinsert467, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.o

.lr.ph344:                                        ; preds = %.lr.ph344.preheader489, %.lr.ph344
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %.lr.ph344 ], [ %indvars.iv376.ph, %.lr.ph344.preheader489 ] ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv376 to i32
  %i.bg = mul i32 %5, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv376
  store i32 %i.bg, ptr %i.bh, align 4
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.preheader337, label %.lr.ph344, !llvm.loop !76

bb.o:                                             ; preds = %.lr.ph370, %.thread325
  %.4250369 = phi i32 [ %.3249, %.lr.ph370 ], [ %.10334, %.thread325 ] ; 4 uses
  %.0251368 = phi i32 [ 0, %.lr.ph370 ], [ %.5256333, %.thread325 ] ; 6 uses
  %.0257366 = phi ptr [ %2, %.lr.ph370 ], [ %i.fd, %.thread325 ] ; 8 uses
  %.0258365 = phi i32 [ 1, %.lr.ph370 ], [ %i.gq, %.thread325 ] ; 4 uses
  %.0260364 = phi ptr [ %i.av, %.lr.ph370 ], [ %.0261363, %.thread325 ] ; 15 uses
  %.0261363 = phi ptr [ %i.au, %.lr.ph370 ], [ %.0260364, %.thread325 ] ; 14 uses
  %.0275362 = phi ptr [ %0, %.lr.ph370 ], [ %.6281331, %.thread325 ] ; 11 uses
  br i1 %.not306, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = tail call i32 @pg_mblen_range(ptr noundef %.0257366, ptr noundef %i.d) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bj = phi i32 [ %i.bi, %bb.p ], [ 1, %bb.o ]  ; 5 uses
  %i.bk = icmp slt i32 %.4250369, %i.n
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = sext i32 %.4250369 to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.bl
  store i32 %i.bd, ptr %i.bm, align 4
  %i.bn = add nsw i32 %.4250369, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.5 = phi i32 [ %i.bn, %bb.r ], [ %.4250369, %bb.q ] ; 8 uses
  %i.bo = icmp eq i32 %.0251368, 0
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bp = mul i32 %.0258365, %4
  store i32 %i.bp, ptr %.0260364, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.0237 = phi i32 [ 1, %bb.t ], [ %.0251368, %bb.s ] ; 5 uses
  %i.bq = icmp slt i32 %.0237, %.5                ; 2 uses
  br i1 %.not308, label %.preheader, label %.preheader335

.preheader335:                                    ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph348, label %.loopexit

.lr.ph348:                                        ; preds = %.preheader335
  %i.br = add i32 %i.bj, -1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.0257366, i64 %i.bs
  %i.bu = zext i32 %i.bj to i64
  %or.cond481 = icmp slt i32 %i.bj, 2
  br label %bb.v

.preheader:                                       ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph351.preheader, label %.loopexit

.lr.ph351.preheader:                              ; preds = %.preheader
  %i.bv = sext i32 %.0237 to i64                  ; 10 uses
  %wide.trip.count389 = sext i32 %.5 to i64       ; 6 uses
  %i.bw = sub nsw i64 %wide.trip.count389, %i.bv  ; 3 uses
  %min.iters.check460 = icmp ult i64 %i.bw, 12
  br i1 %min.iters.check460, label %.lr.ph351.preheader482, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph351.preheader
  %i.bx = xor i64 %i.bv, -1
  %i.by = add nsw i64 %i.bx, %wide.trip.count389  ; 2 uses
  %i.bz = add i32 %.0237, -1                      ; 2 uses
  %i.ca = trunc i64 %i.by to i32
  %i.cb = add i32 %i.bz, %i.ca
  %i.cc = icmp slt i32 %i.cb, %i.bz
  %i.cd = icmp ugt i64 %i.by, 4294967295
  %i.ce = or i1 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph351.preheader482, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cf = shl nsw i64 %i.bv, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.0260364, i64 %i.cf ; 5 uses
  %i.cg = shl nsw i64 %wide.trip.count389, 2      ; 2 uses
  %scevgep435.a = getelementptr i8, ptr %.0260364, i64 %i.cg ; 5 uses
  %scevgep436.a = getelementptr i8, ptr %.0261363, i64 %i.cf
  %scevgep437.a = getelementptr i8, ptr %.0261363, i64 %i.cg
  %i.ch = add i32 %.0237, -1
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = shl nsw i64 %i.ci, 2                    ; 2 uses
  %scevgep438.a = getelementptr i8, ptr %.0260364, i64 %i.cj
  %i.ck = add nsw i64 %wide.trip.count389, %i.ci
  %i.cl = sub nsw i64 %i.ck, %i.bv
  %i.cm = shl nsw i64 %i.cl, 2                    ; 2 uses
  %scevgep439.a = getelementptr i8, ptr %.0260364, i64 %i.cm
  %scevgep440 = getelementptr i8, ptr %.0261363, i64 %i.cj
  %scevgep441 = getelementptr i8, ptr %.0261363, i64 %i.cm
  %i.cn = sub nsw i64 %wide.trip.count389, %i.bv
  %scevgep442 = getelementptr i8, ptr %.0275362, i64 %i.cn
  %scevgep443 = getelementptr i8, ptr %.0257366, i64 1
  %bound0 = icmp ult ptr %scevgep, %scevgep437.a
  %bound1 = icmp ult ptr %scevgep436.a, %scevgep435.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0444 = icmp ult ptr %scevgep, %scevgep439.a
  %bound1445 = icmp ult ptr %scevgep438.a, %scevgep435.a
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx = or i1 %found.conflict, %found.conflict446
  %bound0447.a = icmp ult ptr %scevgep, %scevgep441
  %bound1448.a = icmp ult ptr %scevgep440, %scevgep435.a
  %found.conflict449.a = and i1 %bound0447.a, %bound1448.a
  %conflict.rdx450.a = or i1 %conflict.rdx, %found.conflict449.a
  %bound0451.a = icmp ult ptr %scevgep, %scevgep442
  %bound1452.a = icmp ult ptr %.0275362, %scevgep435.a
  %found.conflict453.a = and i1 %bound0451.a, %bound1452.a
  %conflict.rdx454.a = or i1 %conflict.rdx450.a, %found.conflict453.a
  %bound0455 = icmp ult ptr %scevgep, %scevgep443
  %bound1456 = icmp ult ptr %.0257366, %scevgep435.a
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454.a, %found.conflict457
  br i1 %conflict.rdx458, label %.lr.ph351.preheader482, label %vector.ph461

vector.ph461:                                     ; preds = %vector.memcheck
  %n.vec462 = and i64 %i.bw, -4                   ; 4 uses
  %i.co = add nsw i64 %n.vec462, %i.bv
  %i.cp = getelementptr i8, ptr %.0275362, i64 %n.vec462
  %i.cq = load i8, ptr %.0257366, align 1, !alias.scope !77
  %broadcast.splatinsert474 = insertelement <4 x i8> poison, i8 %i.cq, i64 0
  %broadcast.splat475 = shufflevector <4 x i8> %broadcast.splatinsert474, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph461
  %index470 = phi i64 [ 0, %vector.ph461 ], [ %index.next476, %vector.body469 ] ; 3 uses
  %i.cr = add i64 %index470, %i.bv                ; 3 uses
  %next.gep = getelementptr i8, ptr %.0275362, i64 %index470
  %i.cs = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.cr
  %wide.load = load <4 x i32>, ptr %i.cs, align 4, !alias.scope !80
  %i.ct = add <4 x i32> %wide.load, %broadcast.splat464.a
  %i.cu = shl i64 %i.cr, 32
  %i.cv = add i64 %i.cu, -4294967296
  %i.cw = ashr exact i64 %i.cv, 32                ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.cw
  %wide.load471 = load <4 x i32>, ptr %i.cx, align 4, !alias.scope !82
  %i.cy = add <4 x i32> %wide.load471, %broadcast.splat466
  %i.cz = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.cw
  %wide.load472 = load <4 x i32>, ptr %i.cz, align 4, !alias.scope !84
  %wide.load473 = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !86
  %i.da = icmp eq <4 x i8> %wide.load473, %broadcast.splat475
  %i.db = select <4 x i1> %i.da, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat468
  %i.dc = add <4 x i32> %i.db, %wide.load472
  %i.dd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ct, <4 x i32> %i.cy)
  %i.de = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.cr
  %i.df = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dd, <4 x i32> %i.dc)
  store <4 x i32> %i.df, ptr %i.de, align 4, !alias.scope !88, !noalias !90
  %index.next476 = add nuw i64 %index470, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next476, %n.vec462
  br i1 %i.dg, label %middle.block477, label %vector.body469, !llvm.loop !91

middle.block477:                                  ; preds = %vector.body469
  %cmp.n478 = icmp eq i64 %i.bw, %n.vec462
  br i1 %cmp.n478, label %.loopexit, label %.lr.ph351.preheader482

.lr.ph351.preheader482:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph351.preheader, %middle.block477
  %indvars.iv386.ph = phi i64 [ %i.bv, %vector.memcheck ], [ %i.bv, %vector.scevcheck ], [ %i.bv, %.lr.ph351.preheader ], [ %i.co, %middle.block477 ]
  %.1239349.ph = phi ptr [ %.0275362, %vector.memcheck ], [ %.0275362, %vector.scevcheck ], [ %.0275362, %.lr.ph351.preheader ], [ %i.cp, %middle.block477 ]
  br label %.lr.ph351

bb.v:                                             ; preds = %.lr.ph348, %bb.y
  %.1347 = phi i32 [ %.0237, %.lr.ph348 ], [ %14, %bb.y ] ; 3 uses
  %.0238345 = phi ptr [ %.0275362, %.lr.ph348 ], [ %i.ej, %bb.y ] ; 3 uses
  %9 = add i32 %.1347, -1
  %10 = sext i32 %9 to i64                        ; 4 uses
  %11 = getelementptr inbounds [4 x i8], ptr %.0259, i64 %10
  %12 = load i32, ptr %11, align 4                ; 3 uses
  %13 = sext i32 %.1347 to i64                    ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %13
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = add i32 %i.di, %4
  %i.dk = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %10
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = add i32 %i.dl, %5
  %i.dn = add i32 %12, -1
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds i8, ptr %.0238345, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = load i8, ptr %i.bt, align 1
  %i.ds = icmp eq i8 %i.dq, %i.dr
  %i.dt = icmp eq i32 %12, %i.bj
  %or.cond315 = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond315, label %bb.w, label %rest_of_char_same.exit

bb.w:                                             ; preds = %bb.v
  br i1 %or.cond481, label %rest_of_char_same.exit.thread, label %.lr.ph428

bb.x:                                             ; preds = %.lr.ph428
  %i.du = trunc nuw i64 %i.dw to i32
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %rest_of_char_same.exit.thread, label %.lr.ph428, !llvm.loop !69

.lr.ph428:                                        ; preds = %bb.w, %bb.x
  %indvars.iv.i427 = phi i64 [ %i.dw, %bb.x ], [ %i.bu, %bb.w ]
  %i.dw = add nsw i64 %indvars.iv.i427, -1        ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0238345, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.0257366, i64 %i.dw
  %i.ea = load i8, ptr %i.dz, align 1
  %.not.i = icmp eq i8 %i.dy, %i.ea
  br i1 %.not.i, label %bb.x, label %rest_of_char_same.exit, !llvm.loop !69

rest_of_char_same.exit.thread:                    ; preds = %bb.x, %bb.w
  %i.eb = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %10
  %i.ec = load i32, ptr %i.eb, align 4
  br label %bb.y

rest_of_char_same.exit:                           ; preds = %.lr.ph428, %bb.v
  %i.ed = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %10
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = add i32 %i.ee, %.2274
  br label %bb.y

bb.y:                                             ; preds = %rest_of_char_same.exit, %rest_of_char_same.exit.thread
  %.0 = phi i32 [ %i.ec, %rest_of_char_same.exit.thread ], [ %i.ef, %rest_of_char_same.exit ]
  %i.eg = tail call i32 @llvm.smin.i32(i32 %i.dj, i32 %i.dm)
  %i.eh = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %13
  %..0 = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 %.0)
  store i32 %..0, ptr %i.eh, align 4
  %i.ei = sext i32 %12 to i64
  %i.ej = getelementptr inbounds i8, ptr %.0238345, i64 %i.ei
  %14 = add nsw i32 %.1347, 1                     ; 2 uses
  %exitcond385.not = icmp eq i32 %14, %.5
  br i1 %exitcond385.not, label %.loopexit, label %bb.v, !llvm.loop !92

.lr.ph351:                                        ; preds = %.lr.ph351.preheader482, %.lr.ph351
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph351 ], [ %indvars.iv386.ph, %.lr.ph351.preheader482 ] ; 4 uses
  %.1239349 = phi ptr [ %i.fb, %.lr.ph351 ], [ %.1239349.ph, %.lr.ph351.preheader482 ] ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %indvars.iv386
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = add i32 %i.el, %4
  %i.en = shl i64 %indvars.iv386, 32
  %sext409 = add i64 %i.en, -4294967296
  %i.eo = ashr exact i64 %sext409, 32             ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = add i32 %i.eq, %5
  %i.es = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.eo
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = load i8, ptr %.1239349, align 1
  %i.ev = load i8, ptr %.0257366, align 1
  %i.ew = icmp eq i8 %i.eu, %i.ev
  %i.ex = select i1 %i.ew, i32 0, i32 %.2274
  %i.ey = add i32 %i.ex, %i.et
  %i.ez = tail call i32 @llvm.smin.i32(i32 %i.em, i32 %i.er)
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv386
  %. = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 %i.ey)
  store i32 %., ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.1239349, i64 1
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.loopexit, label %.lr.ph351, !llvm.loop !93

.loopexit:                                        ; preds = %bb.y, %.lr.ph351, %middle.block477, %.preheader335, %.preheader
  %i.fc = sext i32 %i.bj to i64
  %i.fd = getelementptr inbounds i8, ptr %.0257366, i64 %i.fc
  br i1 %i.be, label %bb.z, label %.thread325

bb.z:                                             ; preds = %.loopexit
  %i.fe = add i32 %.0258365, %.neg                ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.5, i32 0) ; 2 uses
  %i.ff = icmp sgt i32 %.5, 0
  br i1 %i.ff, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %bb.z
  %i.fg = zext nneg i32 %.5 to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.fh = trunc nuw i64 %indvars.iv.next392 to i32 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %bb.ab, label %._crit_edge432

bb.ab:                                            ; preds = %.lr.ph431, %bb.aa
  %i.fj = phi i32 [ %.5, %.lr.ph431 ], [ %i.fh, %bb.aa ]
  %indvars.iv391429 = phi i64 [ %i.fg, %.lr.ph431 ], [ %indvars.iv.next392, %bb.aa ]
  %indvars.iv.next392 = add nsw i64 %indvars.iv391429, -1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next392 to i32
  %i.fk = sub i32 %indvars, %i.fe                 ; 3 uses
  %i.fl = and i64 %indvars.iv.next392, 4294967295
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.0260364, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = icmp sgt i32 %i.fk, 0
  %i.fp = mul i32 %i.fk, %4
  %i.fq = mul i32 %5, %i.fk
  %i.fr = sub i32 0, %i.fq
  %i.fs = select i1 %i.fo, i32 %i.fp, i32 %i.fr
  %i.ft = add i32 %i.fn, %i.fs
  %.not309 = icmp sgt i32 %i.ft, %.2271
  br i1 %.not309, label %bb.aa, label %._crit_edge432

._crit_edge432:                                   ; preds = %bb.aa, %bb.ab, %bb.z
  %.6.lcssa = phi i32 [ %smin, %bb.z ], [ %smin, %bb.aa ], [ %i.fj, %bb.ab ] ; 4 uses
  %i.fu = icmp slt i32 %.0251368, %.6.lcssa
  br i1 %i.fu, label %.lr.ph356.preheader, label %.thread321

.lr.ph356.preheader:                              ; preds = %._crit_edge432
  %i.fv = sext i32 %.0251368 to i64
  %i.fw = sext i32 %.6.lcssa to i64
  br label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %bb.ag
  %indvars.iv394 = phi i64 [ %i.fv, %.lr.ph356.preheader ], [ %indvars.iv.next395, %bb.ag ] ; 6 uses
  %.1276352 = phi ptr [ %.0275362, %.lr.ph356.preheader ], [ %.2277, %bb.ag ] ; 3 uses
  %i.fx = trunc nsw i64 %indvars.iv394 to i32     ; 2 uses
  %i.fy = sub i32 %i.fx, %i.fe                    ; 3 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv394 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = icmp sgt i32 %i.fy, 0
  %i.gc = mul i32 %i.fy, %4
  %i.gd = mul i32 %5, %i.fy
  %i.ge = sub i32 0, %i.gd
  %i.gf = select i1 %i.gb, i32 %i.gc, i32 %i.ge
  %i.gg = add i32 %i.ga, %i.gf
  %.not310 = icmp sgt i32 %i.gg, %.2271
  br i1 %.not310, label %bb.ac, label %.thread321

bb.ac:                                            ; preds = %.lr.ph356
  store i32 %i.bd, ptr %i.fz, align 4
  %i.gh = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %indvars.iv394
  store i32 %i.bd, ptr %i.gh, align 4
  %i.gi = icmp eq i64 %indvars.iv394, 0
  br i1 %i.gi, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not308, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = shl i64 %indvars.iv394, 32
  %sext410 = add i64 %i.gj, -4294967296
  %i.gk = ashr exact i64 %sext410, 30
  %i.gl = getelementptr inbounds i8, ptr %.0259, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4
  %i.gn = sext i32 %i.gm to i64
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.go = phi i64 [ %i.gn, %bb.ae ], [ 1, %bb.ad ]
  %i.gp = getelementptr inbounds i8, ptr %.1276352, i64 %i.go
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af
  %.2277 = phi ptr [ %i.gp, %bb.af ], [ %.1276352, %bb.ac ]
  %indvars.iv.next395 = add nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %i.fw
  br i1 %exitcond398.not, label %.loopexit338, label %.lr.ph356

.thread321:                                       ; preds = %.lr.ph356, %._crit_edge432
  %.1276.lcssa = phi ptr [ %.0275362, %._crit_edge432 ], [ %.1276352, %.lr.ph356 ]
  %.1252.lcssa = phi i32 [ %.0251368, %._crit_edge432 ], [ %i.fx, %.lr.ph356 ] ; 2 uses
  %.not312 = icmp slt i32 %.1252.lcssa, %.6.lcssa
  br i1 %.not312, label %.thread325, label %.loopexit338

.thread325:                                       ; preds = %.loopexit, %.thread321
  %.10334 = phi i32 [ %.6.lcssa, %.thread321 ], [ %.5, %.loopexit ]
  %.5256333 = phi i32 [ %.1252.lcssa, %.thread321 ], [ %.0251368, %.loopexit ]
  %.6281331 = phi ptr [ %.1276.lcssa, %.thread321 ], [ %.0275362, %.loopexit ]
  %i.gq = add nuw nsw i32 %.0258365, 1
  %exitcond399.not = icmp eq i32 %.0258365, %i.f
  br i1 %exitcond399.not, label %._crit_edge371, label %bb.o, !llvm.loop !94

._crit_edge371:                                   ; preds = %.thread325, %.preheader337
  %.0261.lcssa = phi ptr [ %i.au, %.preheader337 ], [ %.0260364, %.thread325 ]
  %i.gr = sext i32 %i.e to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %.0261.lcssa, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4
  br label %.loopexit338

.loopexit338:                                     ; preds = %.thread321, %bb.ag, %bb.m, %._crit_edge371, %bb.d, %bb.b
  %.6268 = phi i32 [ %i.g, %bb.b ], [ %i.gt, %._crit_edge371 ], [ %i.ag, %bb.m ], [ %i.h, %bb.d ], [ %i.bd, %bb.ag ], [ %i.bd, %.thread321 ]
  ret i32 %.6268
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @initClosestMatch(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @updateClosestMatch(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1
  %i.d = icmp eq i8 %i.c, 0
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %1, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 255
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 2 uses
  %i.k = icmp ugt i64 %i.j, 255
  br i1 %i.k, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nuw nsw i64 %i.h to i32
  %i.m = trunc nuw nsw i64 %i.j to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call i32 @varstr_levenshtein_less_equal(ptr noundef nonnull %i.a, i32 noundef %i.l, ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef %i.o, i1 noundef zeroext true) ; 4 uses
  %i.q = load i32, ptr %i.n, align 4
  %.not = icmp sgt i32 %i.p, %i.q
end_hunk_0
