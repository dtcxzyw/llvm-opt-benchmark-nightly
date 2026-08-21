inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@varstr_levenshtein:bb.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @varstr_levenshtein_less_equal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = tail call i32 @pg_mbstrlen_with_len(ptr noundef %0, i32 noundef %1) #18 ; 13 uses
  %i.f = tail call i32 @pg_mbstrlen_with_len(ptr noundef %2, i32 noundef %3) #18 ; 9 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %i.f, %4
  br label %.loopexit338

bb.c:                                             ; preds = %bb.a
  %.not302 = icmp eq i32 %i.f, 0
  br i1 %.not302, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = mul i32 %i.e, %5
  br label %.loopexit338

bb.e:                                             ; preds = %bb.c
  br i1 %8, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %i.e, 255
  %i.j = icmp sgt i32 %i.f, 255
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 50856066) #18 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, i32 noundef 255) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.18, i32 noundef 135, ptr noundef nonnull @__func__.varstr_levenshtein_less_equal) #18
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = add i32 %i.e, 1                          ; 7 uses
  %i.o = icmp sgt i32 %7, -1
  br i1 %i.o, label %bb.i, label %.thread

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
  %broadcast.splatinsert463 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat464 = shufflevector <4 x i32> %broadcast.splatinsert463, <4 x i32> poison, <4 x i32> zeroinitializer
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
  %.0257366 = phi ptr [ %2, %.lr.ph370 ], [ %i.fg, %.thread325 ] ; 8 uses
  %.0258365 = phi i32 [ 1, %.lr.ph370 ], [ %i.gt, %.thread325 ] ; 4 uses
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
  %i.bu = sext i32 %.0237 to i64
  %wide.trip.count384 = sext i32 %.5 to i64
  %i.bv = zext i32 %i.bj to i64
  %or.cond481 = icmp slt i32 %i.bj, 2
  br label %bb.v

.preheader:                                       ; preds = %bb.u
  br i1 %i.bq, label %.lr.ph351.preheader, label %.loopexit

.lr.ph351.preheader:                              ; preds = %.preheader
  %i.bw = sext i32 %.0237 to i64                  ; 10 uses
  %wide.trip.count389 = sext i32 %.5 to i64       ; 6 uses
  %i.bx = sub nsw i64 %wide.trip.count389, %i.bw  ; 3 uses
  %min.iters.check460 = icmp ult i64 %i.bx, 12
  br i1 %min.iters.check460, label %.lr.ph351.preheader482, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph351.preheader
  %i.by = xor i64 %i.bw, -1
  %i.bz = add nsw i64 %i.by, %wide.trip.count389  ; 2 uses
  %9 = add i32 %.0237, -1                         ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add i32 %9, %i.ca
  %i.cc = icmp slt i32 %i.cb, %9
  %i.cd = icmp ugt i64 %i.bz, 4294967295
  %i.ce = or i1 %i.cc, %i.cd
  br i1 %i.ce, label %.lr.ph351.preheader482, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cf = shl nsw i64 %i.bw, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.0260364, i64 %i.cf ; 5 uses
  %i.cg = shl nsw i64 %wide.trip.count389, 2      ; 2 uses
  %scevgep435 = getelementptr i8, ptr %.0260364, i64 %i.cg ; 5 uses
  %scevgep436 = getelementptr i8, ptr %.0261363, i64 %i.cf
  %scevgep437 = getelementptr i8, ptr %.0261363, i64 %i.cg
  %10 = add i32 %.0237, -1
  %i.ch = sext i32 %10 to i64                     ; 2 uses
  %i.ci = shl nsw i64 %i.ch, 2                    ; 2 uses
  %scevgep438 = getelementptr i8, ptr %.0260364, i64 %i.ci
  %i.cj = add nsw i64 %wide.trip.count389, %i.ch
  %i.ck = sub nsw i64 %i.cj, %i.bw
  %i.cl = shl nsw i64 %i.ck, 2                    ; 2 uses
  %scevgep439 = getelementptr i8, ptr %.0260364, i64 %i.cl
  %scevgep440 = getelementptr i8, ptr %.0261363, i64 %i.ci
  %scevgep441 = getelementptr i8, ptr %.0261363, i64 %i.cl
  %i.cm = sub nsw i64 %wide.trip.count389, %i.bw
  %scevgep442 = getelementptr i8, ptr %.0275362, i64 %i.cm
  %scevgep443 = getelementptr i8, ptr %.0257366, i64 1
  %bound0 = icmp ult ptr %scevgep, %scevgep437
  %bound1 = icmp ult ptr %scevgep436, %scevgep435
  %found.conflict = and i1 %bound0, %bound1
  %bound0444 = icmp ult ptr %scevgep, %scevgep439
  %bound1445 = icmp ult ptr %scevgep438, %scevgep435
  %found.conflict446 = and i1 %bound0444, %bound1445
  %conflict.rdx = or i1 %found.conflict, %found.conflict446
  %bound0447 = icmp ult ptr %scevgep, %scevgep441
  %bound1448 = icmp ult ptr %scevgep440, %scevgep435
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx, %found.conflict449
  %bound0451 = icmp ult ptr %scevgep, %scevgep442
  %bound1452 = icmp ult ptr %.0275362, %scevgep435
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %scevgep, %scevgep443
  %bound1456 = icmp ult ptr %.0257366, %scevgep435
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  br i1 %conflict.rdx458, label %.lr.ph351.preheader482, label %vector.ph461

vector.ph461:                                     ; preds = %vector.memcheck
  %n.vec462 = and i64 %i.bx, -4                   ; 4 uses
  %i.cn = add nsw i64 %n.vec462, %i.bw
  %i.co = getelementptr i8, ptr %.0275362, i64 %n.vec462
  %i.cp = load i8, ptr %.0257366, align 1, !alias.scope !77
  %broadcast.splatinsert474 = insertelement <4 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat475 = shufflevector <4 x i8> %broadcast.splatinsert474, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vector.body469

vector.body469:                                   ; preds = %vector.body469, %vector.ph461
  %index470 = phi i64 [ 0, %vector.ph461 ], [ %index.next476, %vector.body469 ] ; 3 uses
  %i.cq = add i64 %index470, %i.bw                ; 3 uses
  %next.gep = getelementptr i8, ptr %.0275362, i64 %index470
  %i.cr = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.cq
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !alias.scope !80
  %i.cs = add <4 x i32> %wide.load, %broadcast.splat464
  %i.ct = shl i64 %i.cq, 32
  %i.cu = add i64 %i.ct, -4294967296
  %i.cv = ashr exact i64 %i.cu, 32                ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.cv
  %wide.load471 = load <4 x i32>, ptr %i.cw, align 4, !alias.scope !82
  %i.cx = add <4 x i32> %wide.load471, %broadcast.splat466
  %i.cy = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.cv
  %wide.load472 = load <4 x i32>, ptr %i.cy, align 4, !alias.scope !84
  %wide.load473 = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !86
  %i.cz = icmp eq <4 x i8> %wide.load473, %broadcast.splat475
  %i.da = select <4 x i1> %i.cz, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat468
  %i.db = add <4 x i32> %i.da, %wide.load472
  %i.dc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cs, <4 x i32> %i.cx)
  %i.dd = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.cq
  %i.de = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dc, <4 x i32> %i.db)
  store <4 x i32> %i.de, ptr %i.dd, align 4, !alias.scope !88, !noalias !90
  %index.next476 = add nuw i64 %index470, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next476, %n.vec462
  br i1 %i.df, label %middle.block477, label %vector.body469, !llvm.loop !91

middle.block477:                                  ; preds = %vector.body469
  %cmp.n478 = icmp eq i64 %i.bx, %n.vec462
  br i1 %cmp.n478, label %.loopexit, label %.lr.ph351.preheader482

.lr.ph351.preheader482:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph351.preheader, %middle.block477
  %indvars.iv386.ph = phi i64 [ %i.bw, %vector.memcheck ], [ %i.bw, %vector.scevcheck ], [ %i.bw, %.lr.ph351.preheader ], [ %i.cn, %middle.block477 ]
  %.1239349.ph = phi ptr [ %.0275362, %vector.memcheck ], [ %.0275362, %vector.scevcheck ], [ %.0275362, %.lr.ph351.preheader ], [ %i.co, %middle.block477 ]
  br label %.lr.ph351

bb.v:                                             ; preds = %.lr.ph348, %bb.y
  %indvars.iv381 = phi i64 [ %i.bu, %.lr.ph348 ], [ %indvars.iv.next382, %bb.y ] ; 4 uses
  %.0238345 = phi ptr [ %.0275362, %.lr.ph348 ], [ %i.em, %bb.y ] ; 3 uses
  %i.dg = shl i64 %indvars.iv381, 32
  %sext = add i64 %i.dg, -4294967296
  %i.dh = ashr exact i64 %sext, 32                ; 4 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.0259, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4            ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %indvars.iv381
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = add i32 %i.dl, %4
  %i.dn = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.dh
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = add i32 %i.do, %5
  %i.dq = add i32 %i.dj, -1
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %.0238345, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = load i8, ptr %i.bt, align 1
  %i.dv = icmp eq i8 %i.dt, %i.du
  %i.dw = icmp eq i32 %i.dj, %i.bj
  %or.cond315 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond315, label %bb.w, label %rest_of_char_same.exit

bb.w:                                             ; preds = %bb.v
  br i1 %or.cond481, label %rest_of_char_same.exit.thread, label %.lr.ph428

bb.x:                                             ; preds = %.lr.ph428
  %i.dx = trunc nuw i64 %i.dz to i32
  %i.dy = icmp slt i32 %i.dx, 1
  br i1 %i.dy, label %rest_of_char_same.exit.thread, label %.lr.ph428, !llvm.loop !69

.lr.ph428:                                        ; preds = %bb.w, %bb.x
  %indvars.iv.i427 = phi i64 [ %i.dz, %bb.x ], [ %i.bv, %bb.w ]
  %i.dz = add nsw i64 %indvars.iv.i427, -1        ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0238345, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0257366, i64 %i.dz
  %i.ed = load i8, ptr %i.ec, align 1
  %.not.i = icmp eq i8 %i.eb, %i.ed
  br i1 %.not.i, label %bb.x, label %rest_of_char_same.exit, !llvm.loop !69

rest_of_char_same.exit.thread:                    ; preds = %bb.x, %bb.w
  %i.ee = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.dh
  %i.ef = load i32, ptr %i.ee, align 4
  br label %bb.y

rest_of_char_same.exit:                           ; preds = %.lr.ph428, %bb.v
  %i.eg = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.dh
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = add i32 %i.eh, %.2274
  br label %bb.y

bb.y:                                             ; preds = %rest_of_char_same.exit, %rest_of_char_same.exit.thread
  %.0 = phi i32 [ %i.ef, %rest_of_char_same.exit.thread ], [ %i.ei, %rest_of_char_same.exit ]
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.dp)
  %i.ek = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv381
  %..0 = tail call i32 @llvm.smin.i32(i32 %i.ej, i32 %.0)
  store i32 %..0, ptr %i.ek, align 4
  %i.el = sext i32 %i.dj to i64
  %i.em = getelementptr inbounds i8, ptr %.0238345, i64 %i.el
  %indvars.iv.next382 = add nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %.loopexit, label %bb.v, !llvm.loop !92

.lr.ph351:                                        ; preds = %.lr.ph351.preheader482, %.lr.ph351
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph351 ], [ %indvars.iv386.ph, %.lr.ph351.preheader482 ] ; 4 uses
  %.1239349 = phi ptr [ %i.fe, %.lr.ph351 ], [ %.1239349.ph, %.lr.ph351.preheader482 ] ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %indvars.iv386
  %i.eo = load i32, ptr %i.en, align 4
  %i.ep = add i32 %i.eo, %4
  %i.eq = shl i64 %indvars.iv386, 32
  %sext409 = add i64 %i.eq, -4294967296
  %i.er = ashr exact i64 %sext409, 32             ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = add i32 %i.et, %5
  %i.ev = getelementptr inbounds [4 x i8], ptr %.0261363, i64 %i.er
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = load i8, ptr %.1239349, align 1
  %i.ey = load i8, ptr %.0257366, align 1
  %i.ez = icmp eq i8 %i.ex, %i.ey
  %i.fa = select i1 %i.ez, i32 0, i32 %.2274
  %i.fb = add i32 %i.fa, %i.ew
  %i.fc = tail call i32 @llvm.smin.i32(i32 %i.ep, i32 %i.eu)
  %i.fd = getelementptr inbounds [4 x i8], ptr %.0260364, i64 %indvars.iv386
  %. = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 %i.fb)
  store i32 %., ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.1239349, i64 1
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond390.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count389
  br i1 %exitcond390.not, label %.loopexit, label %.lr.ph351, !llvm.loop !93

.loopexit:                                        ; preds = %bb.y, %.lr.ph351, %middle.block477, %.preheader335, %.preheader
  %i.ff = sext i32 %i.bj to i64
  %i.fg = getelementptr inbounds i8, ptr %.0257366, i64 %i.ff
  br i1 %i.be, label %bb.z, label %.thread325

bb.z:                                             ; preds = %.loopexit
  %i.fh = add i32 %.0258365, %.neg                ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.5, i32 0) ; 2 uses
  %i.fi = icmp sgt i32 %.5, 0
  br i1 %i.fi, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %bb.z
  %i.fj = zext nneg i32 %.5 to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.ab
  %i.fk = trunc nuw i64 %indvars.iv.next392 to i32 ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.ab, label %._crit_edge432

bb.ab:                                            ; preds = %.lr.ph431, %bb.aa
  %i.fm = phi i32 [ %.5, %.lr.ph431 ], [ %i.fk, %bb.aa ]
  %indvars.iv391429 = phi i64 [ %i.fj, %.lr.ph431 ], [ %indvars.iv.next392, %bb.aa ]
  %indvars.iv.next392 = add nsw i64 %indvars.iv391429, -1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next392 to i32
  %i.fn = sub i32 %indvars, %i.fh                 ; 3 uses
  %i.fo = and i64 %indvars.iv.next392, 4294967295
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.0260364, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4
end_hunk_0
begin_hunk_1_@estimateHyperLogLog

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @tuplestore_putvalues(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @accumArrayResult(ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ArrayGetNItems(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @get_type_io_data(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fmgr_info_cxt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @appendStringInfo(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @makeStringInfo() local_unnamed_addr #3

declare void @enlargeStringInfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @text_format_parse_digits(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = add i8 %i.b, -48
  %or.cond22 = icmp ult i8 %i.c, 10               ; 2 uses
  br i1 %or.cond22, label %.lr.ph, label %.critedge

bb.b:                                             ; preds = %bb.e
  %i.d = extractvalue { i32, i1 } %i.l, 0         ; 2 uses
  %i.e = load i8, ptr %i.q, align 1               ; 2 uses
  %i.f = add i8 %i.e, -48
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !101

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi i8 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %.024 = phi ptr [ %i.q, %bb.b ], [ %i.a, %bb.a ]
  %.01523 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.h = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.01523, i32 10) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !102

bb.c:                                             ; preds = %.lr.ph
  %i.j = extractvalue { i32, i1 } %i.h, 0
  %narrow = add nsw i8 %i.g, -48
  %i.k = zext nneg i8 %narrow to i32
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 %i.k) ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !102

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 50331778) #18 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5075, ptr noundef nonnull @__func__.text_format_parse_digits) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.024, i64 1 ; 4 uses
  %.not = icmp ult ptr %i.q, %1
  br i1 %.not, label %bb.b, label %bb.f, !llvm.loop !101

bb.f:                                             ; preds = %bb.e
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.s = tail call i32 @errcode(i32 noundef 50856066) #18 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11) #18 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.12) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5076, ptr noundef nonnull @__func__.text_format_parse_digits) #18
  unreachable

.critedge:                                        ; preds = %bb.b, %bb.a
  %.015.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  %.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.q, %bb.b ]
  store ptr %.0.lcssa, ptr %0, align 8
  store i32 %.015.lcssa, ptr %2, align 4
  ret i1 %or.cond22
}

; Function Attrs: nounwind uwtable
define internal fastcc void @text_format_append_string(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = icmp eq i32 %3, -2147483648
  br i1 %i.c, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 50331778) #18 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5257, ptr noundef nonnull @__func__.text_format_append_string) #18
  unreachable

.thread:                                          ; preds = %bb.d
  %i.g = sub nsw i32 0, %3
  %i.h = tail call i32 @pg_mbstrlen(ptr noundef %1) #18
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %.not = trunc i32 %2 to i1
  %i.i = tail call i32 @pg_mbstrlen(ptr noundef %1) #18 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.f
  %i.j = phi i32 [ %i.h, %.thread ], [ %i.i, %bb.f ] ; 2 uses
  %.02227 = phi i32 [ %i.g, %.thread ], [ %3, %bb.f ] ; 2 uses
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %1) #18
  %i.k = icmp slt i32 %i.j, %.02227
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.l = sub i32 %.02227, %i.j
  tail call void @appendStringInfoSpaces(ptr noundef nonnull %0, i32 noundef %i.l) #18
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.m = icmp slt i32 %i.i, %3
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = sub i32 %3, %i.i
  tail call void @appendStringInfoSpaces(ptr noundef nonnull %0, i32 noundef %i.n) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @appendStringInfoString(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g, %bb.b
  ret void
}

declare ptr @quote_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @quote_literal_cstr(ptr noundef) local_unnamed_addr #3

declare i32 @pg_mbstrlen(ptr noundef) local_unnamed_addr #3

declare void @appendStringInfoSpaces(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !5, !29, !28}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = !{!48}
!48 = distinct !{!48, !49, !"pq_writeint32: argument 0"}
!49 = distinct !{!49, !"pq_writeint32"}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !5, !28, !29}
!58 = !{!"branch_weights", i32 8, i32 24}
!59 = distinct !{!59, !5, !28, !29}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5, !28}
!62 = distinct !{!62, !5, !63}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5, !28, !29}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5, !29, !28}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5, !28, !29}
!76 = distinct !{!76, !5, !29, !28}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!81}
!81 = distinct !{!81, !79}
!82 = !{!83}
!83 = distinct !{!83, !79}
!84 = !{!85}
!85 = distinct !{!85, !79}
!86 = !{!87}
!87 = distinct !{!87, !79}
!88 = !{!89}
!89 = distinct !{!89, !79}
!90 = !{!81, !83, !85, !87, !78}
!91 = distinct !{!91, !5, !28, !29}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5, !28}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
