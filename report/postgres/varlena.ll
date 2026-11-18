Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varlena?download=true
inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@varstr_levenshtein_less_equal:bb.a
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
  br i1 %min.iters.check, label %.lr.ph344.preheader504, label %vector.ph

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
  br i1 %cmp.n, label %.preheader337, label %.lr.ph344.preheader504

.lr.ph344.preheader504:                           ; preds = %.lr.ph344.preheader, %middle.block
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
  %broadcast.splatinsert478 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat479 = shufflevector <4 x i32> %broadcast.splatinsert478, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert480 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat481 = shufflevector <4 x i32> %broadcast.splatinsert480, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert482 = insertelement <4 x i32> poison, i32 %.2274, i64 0
  %broadcast.splat483 = shufflevector <4 x i32> %broadcast.splatinsert482, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.o

.lr.ph344:                                        ; preds = %.lr.ph344.preheader504, %.lr.ph344
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %.lr.ph344 ], [ %indvars.iv376.ph, %.lr.ph344.preheader504 ] ; 3 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv376 to i32
  %i.bg = mul i32 %5, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv376
  store i32 %i.bg, ptr %i.bh, align 4
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not, label %.preheader337, label %.lr.ph344, !llvm.loop !76

bb.o:                                             ; preds = %.lr.ph370, %.thread325
  %.4250369 = phi i32 [ %.3249, %.lr.ph370 ], [ %.10334, %.thread325 ] ; 4 uses
  %.0251368 = phi i32 [ 0, %.lr.ph370 ], [ %.5256333, %.thread325 ] ; 7 uses
  %.0257366 = phi ptr [ %2, %.lr.ph370 ], [ %i.fi, %.thread325 ] ; 8 uses
  %.0258365 = phi i32 [ 1, %.lr.ph370 ], [ %i.gv, %.thread325 ] ; 4 uses
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
  %.0237 = phi i32 [ 1, %bb.t ], [ %.0251368, %bb.s ] ; 4 uses
  %i.bq = icmp slt i32 %.0237, %.5                ; 2 uses
  br i1 %.not308, label %.preheader, label %.preheader335

.preheader335:                                    ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph348, label %.loopexit

.lr.ph348:                                        ; preds = %.preheader335
  %i.br = add i32 %i.bj, -1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %.0257366, i64 %i.bs
  %i.bu = sext i32 %.0237 to i64
  %wide.trip.count384 = sext i32 %.5 to i64
  %i.bv = zext i32 %i.bj to i64
  %or.cond496 = icmp slt i32 %i.bj, 2
  br label %bb.v

.preheader:                                       ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph351.preheader, label %.loopexit

.lr.ph351.preheader:                              ; preds = %.preheader
  %i.bw = sext i32 %.0237 to i64                  ; 9 uses
  %wide.trip.count389 = sext i32 %.5 to i64       ; 5 uses
  %i.bx = sub nsw i64 %wide.trip.count389, %i.bw  ; 4 uses
  %min.iters.check460 = icmp ult i64 %i.bx, 16
  br i1 %min.iters.check460, label %.lr.ph351.preheader497, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph351.preheader
  %i.by = xor i64 %i.bw, -1
  %i.bz = add nsw i64 %i.by, %wide.trip.count389  ; 2 uses
  %i.ca = tail call i32 @llvm.usub.sat.i32(i32 %.0251368, i32 1) ; 2 uses
  %i.cb = trunc i64 %i.bz to i32
  %i.cc = add i32 %i.ca, %i.cb
  %i.cd = icmp slt i32 %i.cc, %i.ca
  %i.ce = icmp ugt i64 %i.bz, 4294967295
  %i.cf = or i1 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph351.preheader497, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cg = shl nsw i64 %i.bw, 2                    ; 2 uses
  %i.ch = getelementptr i8, ptr %.0260364, i64 %i.cg ; 5 uses
  %i.ci = shl nsw i64 %wide.trip.count389, 2      ; 2 uses
  %i.cj = getelementptr i8, ptr %.0260364, i64 %i.ci ; 5 uses
  %i.ck = getelementptr i8, ptr %.0261363, i64 %i.cg
  %i.cl = getelementptr i8, ptr %.0261363, i64 %i.ci
  %9 = add i32 %.0237, -1
  %10 = sext i32 %9 to i64                        ; 2 uses
  %11 = shl nsw i64 %10, 2                        ; 2 uses
  %12 = getelementptr i8, ptr %.0260364, i64 %11
  %13 = add nsw i64 %wide.trip.count389, %10
  %14 = sub nsw i64 %13, %i.bw
  %i.cm = shl nsw i64 %14, 2                      ; 2 uses
  %i.cn = getelementptr i8, ptr %.0260364, i64 %i.cm
  %15 = getelementptr i8, ptr %.0261363, i64 %11
  %16 = getelementptr i8, ptr %.0261363, i64 %i.cm
  %17 = getelementptr i8, ptr %.0275362, i64 %i.bx
  %i.co = getelementptr i8, ptr %.0257366, i64 1
  %bound0.a = icmp ult ptr %i.ch, %i.cl
  %bound1.a = icmp ult ptr %i.ck, %i.cj
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  %bound0461 = icmp ult ptr %i.ch, %i.cn
  %bound1462 = icmp ult ptr %12, %i.cj
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx = or i1 %found.conflict.a, %found.conflict463
  %bound0464 = icmp ult ptr %i.ch, %16
  %bound1465 = icmp ult ptr %15, %i.cj
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %conflict.rdx, %found.conflict466
  %bound0468 = icmp ult ptr %i.ch, %17
  %bound1469 = icmp ult ptr %.0275362, %i.cj
  %found.conflict470 = and i1 %bound0468, %bound1469
  %conflict.rdx471 = or i1 %conflict.rdx467, %found.conflict470
  %bound0472 = icmp ult ptr %i.ch, %i.co
  %bound1473 = icmp ult ptr %.0257366, %i.cj
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx471, %found.conflict474
  br i1 %conflict.rdx475, label %.lr.ph351.preheader497, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck
  %n.vec477 = and i64 %i.bx, -4                   ; 4 uses
  %i.cp = add nsw i64 %n.vec477, %i.bw
  %i.cq = getelementptr i8, ptr %.0275362, i64 %n.vec477
  %i.cr = load i8, ptr %.0257366, align 1, !alias.scope !88
  %broadcast.splatinsert489 = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %broadcast.splat490 = shufflevector <4 x i8> %broadcast.splatinsert489, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph476
  %index485 = phi i64 [ 0, %vector.ph476 ], [ %index.next491, %vector.body484 ] ; 3 uses
  %i.cs = add i64 %index485, %i.bw                ; 3 uses
  %next.gep = getelementptr i8, ptr %.0275362, i64 %index485
  %i.ct = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.cs
  %wide.load = load <4 x i32>, ptr %i.ct, align 4, !alias.scope !89
  %i.cu = add <4 x i32> %wide.load, %broadcast.splat479
  %i.cv = shl i64 %i.cs, 32
  %i.cw = add i64 %i.cv, -4294967296
  %i.cx = ashr exact i64 %i.cw, 32                ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.cx
  %wide.load486 = load <4 x i32>, ptr %i.cy, align 4, !alias.scope !90
  %i.cz = add <4 x i32> %wide.load486, %broadcast.splat481
  %i.da = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.cx
  %wide.load487 = load <4 x i32>, ptr %i.da, align 4, !alias.scope !91
  %wide.load488 = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !92
  %i.db = icmp eq <4 x i8> %wide.load488, %broadcast.splat490
  %i.dc = select <4 x i1> %i.db, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat483
  %i.dd = add <4 x i32> %i.dc, %wide.load487
  %i.de = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cu, <4 x i32> %i.cz)
  %i.df = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.cs
  %i.dg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.de, <4 x i32> %i.dd)
  store <4 x i32> %i.dg, ptr %i.df, align 4, !alias.scope !93, !noalias !94
  %index.next491 = add nuw i64 %index485, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next491, %n.vec477
  br i1 %i.dh, label %middle.block492, label %vector.body484, !llvm.loop !84

middle.block492:                                  ; preds = %vector.body484
  %cmp.n493 = icmp eq i64 %i.bx, %n.vec477
  br i1 %cmp.n493, label %.loopexit, label %.lr.ph351.preheader497

.lr.ph351.preheader497:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph351.preheader, %middle.block492
  %indvars.iv386.ph = phi i64 [ %i.bw, %vector.memcheck ], [ %i.bw, %vector.scevcheck ], [ %i.bw, %.lr.ph351.preheader ], [ %i.cp, %middle.block492 ]
  %.1239349.ph = phi ptr [ %.0275362, %vector.memcheck ], [ %.0275362, %vector.scevcheck ], [ %.0275362, %.lr.ph351.preheader ], [ %i.cq, %middle.block492 ]
  br label %.lr.ph351

bb.v:                                             ; preds = %.lr.ph348, %bb.y
  %indvars.iv381 = phi i64 [ %i.bu, %.lr.ph348 ], [ %indvars.iv.next382, %bb.y ] ; 4 uses
  %.0238345 = phi ptr [ %.0275362, %.lr.ph348 ], [ %i.eo, %bb.y ] ; 3 uses
  %i.di = shl i64 %indvars.iv381, 32
  %sext = add i64 %i.di, -4294967296
  %i.dj = ashr exact i64 %sext, 32                ; 4 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %.0259, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4            ; 3 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %indvars.iv381
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = add i32 %i.dn, %4
  %i.dp = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.dj
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = add i32 %i.dq, %5
  %i.ds = add i32 %i.dl, -1
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %.0238345, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = load i8, ptr %i.bt, align 1
  %i.dx = icmp eq i8 %i.dv, %i.dw
  %i.dy = icmp eq i32 %i.dl, %i.bj
  %or.cond315 = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond315, label %bb.w, label %rest_of_char_same.exit

bb.w:                                             ; preds = %bb.v
  br i1 %or.cond496, label %rest_of_char_same.exit.thread, label %.lr.ph428

bb.x:                                             ; preds = %.lr.ph428
  %i.dz = trunc nuw i64 %i.eb to i32
  %i.ea = icmp slt i32 %i.dz, 1
  br i1 %i.ea, label %rest_of_char_same.exit.thread, label %.lr.ph428, !llvm.loop !2

.lr.ph428:                                        ; preds = %bb.w, %bb.x
  %indvars.iv.i427 = phi i64 [ %i.eb, %bb.x ], [ %i.bv, %bb.w ]
  %i.eb = add nsw i64 %indvars.iv.i427, -1        ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0238345, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.0257366, i64 %i.eb
  %i.ef = load i8, ptr %i.ee, align 1
  %.not.i = icmp eq i8 %i.ed, %i.ef
  br i1 %.not.i, label %bb.x, label %rest_of_char_same.exit, !llvm.loop !2

rest_of_char_same.exit.thread:                    ; preds = %bb.x, %bb.w
  %i.eg = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.dj
  %i.eh = load i32, ptr %i.eg, align 4
  br label %bb.y

rest_of_char_same.exit:                           ; preds = %.lr.ph428, %bb.v
  %i.ei = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.dj
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = add i32 %i.ej, %.2274
  br label %bb.y

bb.y:                                             ; preds = %rest_of_char_same.exit, %rest_of_char_same.exit.thread
  %.0 = phi i32 [ %i.eh, %rest_of_char_same.exit.thread ], [ %i.ek, %rest_of_char_same.exit ]
  %i.el = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dr)
  %i.em = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv381
  %..0 = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %.0)
  store i32 %..0, ptr %i.em, align 4
  %i.en = sext i32 %i.dl to i64
  %i.eo = getelementptr inbounds i8, ptr %.0238345, i64 %i.en
  %indvars.iv.next382 = add nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %.loopexit, label %bb.v, !llvm.loop !85

.lr.ph351:                                        ; preds = %.lr.ph351.preheader497, %.lr.ph351
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph351 ], [ %indvars.iv386.ph, %.lr.ph351.preheader497 ] ; 4 uses
  %.1239349 = phi ptr [ %i.fg, %.lr.ph351 ], [ %.1239349.ph, %.lr.ph351.preheader497 ] ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %indvars.iv386
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = add i32 %i.eq, %4
  %i.es = shl i64 %indvars.iv386, 32
  %sext409 = add i64 %i.es, -4294967296
  %i.et = ashr exact i64 %sext409, 32             ; 2 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = add i32 %i.ev, %5
  %i.ex = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.et
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = load i8, ptr %.1239349, align 1
  %i.fa = load i8, ptr %.0257366, align 1
  %i.fb = icmp eq i8 %i.ez, %i.fa
  %i.fc = select i1 %i.fb, i32 0, i32 %.2274
  %i.fd = add i32 %i.fc, %i.ey
  %i.fe = tail call i32 @llvm.smin.i32(i32 %i.er, i32 %i.ew)
  %i.ff = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv386
  %. = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 %i.fd)
  store i32 %., ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.1239349, i64 1
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.loopexit, label %.lr.ph351, !llvm.loop !86

.loopexit:                                        ; preds = %bb.y, %.lr.ph351, %middle.block492, %.preheader335, %.preheader
  %i.fh = sext i32 %i.bj to i64
  %i.fi = getelementptr inbounds i8, ptr %.0257366, i64 %i.fh
  br i1 %i.be, label %bb.z, label %.thread325

bb.z:                                             ; preds = %.loopexit
  %i.fj = add i32 %.0258365, %.neg                ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.5, i32 0) ; 2 uses
  %i.fk = icmp sgt i32 %.5, 0
  br i1 %i.fk, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %bb.z
  %i.fl = zext nneg i32 %.5 to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.fm = trunc nuw i64 %indvars.iv.next392 to i32 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %bb.ab, label %._crit_edge432

bb.ab:                                            ; preds = %.lr.ph431, %bb.aa
  %i.fo = phi i32 [ %.5, %.lr.ph431 ], [ %i.fm, %bb.aa ]
  %indvars.iv391429 = phi i64 [ %i.fl, %.lr.ph431 ], [ %indvars.iv.next392, %bb.aa ]
  %indvars.iv.next392 = add nsw i64 %indvars.iv391429, -1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next392 to i32
  %i.fp = sub i32 %indvars, %i.fj                 ; 3 uses
  %i.fq = and i64 %indvars.iv.next392, 4294967295
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0260364, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = icmp sgt i32 %i.fp, 0
  %i.fu = mul i32 %i.fp, %4
  %i.fv = mul i32 %5, %i.fp
  %i.fw = sub i32 0, %i.fv
  %i.fx = select i1 %i.ft, i32 %i.fu, i32 %i.fw
  %i.fy = add i32 %i.fs, %i.fx
  %.not309 = icmp sgt i32 %i.fy, %.2271
  br i1 %.not309, label %bb.aa, label %._crit_edge432

._crit_edge432:                                   ; preds = %bb.aa, %bb.ab, %bb.z
  %.6.lcssa = phi i32 [ %smin, %bb.z ], [ %smin, %bb.aa ], [ %i.fo, %bb.ab ] ; 4 uses
  %i.fz = icmp slt i32 %.0251368, %.6.lcssa
  br i1 %i.fz, label %.lr.ph356.preheader, label %.thread321

.lr.ph356.preheader:                              ; preds = %._crit_edge432
  %i.ga = sext i32 %.0251368 to i64
  %i.gb = sext i32 %.6.lcssa to i64
  br label %.lr.ph356

.lr.ph356:                                        ; preds = %.lr.ph356.preheader, %bb.ag
  %indvars.iv394 = phi i64 [ %i.ga, %.lr.ph356.preheader ], [ %indvars.iv.next395, %bb.ag ] ; 6 uses
  %.1276352 = phi ptr [ %.0275362, %.lr.ph356.preheader ], [ %.2277, %bb.ag ] ; 3 uses
  %i.gc = trunc nsw i64 %indvars.iv394 to i32     ; 2 uses
  %i.gd = sub i32 %i.gc, %i.fj                    ; 3 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv394 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = icmp sgt i32 %i.gd, 0
  %i.gh = mul i32 %i.gd, %4
end_hunk_0
