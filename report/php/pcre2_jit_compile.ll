Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@fast_forward_first_n_chars:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %1, align 16, !tbaa !436
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.c, align 1, !tbaa !438
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 0, ptr %i.d, align 1, !tbaa !436
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !438
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i8 0, ptr %i.f, align 2, !tbaa !436
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 15
  store i8 0, ptr %i.g, align 1, !tbaa !438
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 0, ptr %i.h, align 1, !tbaa !436
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !438
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 0, ptr %i.j, align 4, !tbaa !436
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !438
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 35
  store i8 0, ptr %i.l, align 1, !tbaa !436
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 0, ptr %i.m, align 4, !tbaa !438
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 42
  store i8 0, ptr %i.n, align 2, !tbaa !436
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 43
  store i8 0, ptr %i.o, align 1, !tbaa !438
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.p, align 1, !tbaa !436
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 0, ptr %i.q, align 2, !tbaa !438
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.r, align 8, !tbaa !436
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 57
  store i8 0, ptr %i.s, align 1, !tbaa !438
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 63
  store i8 0, ptr %i.t, align 1, !tbaa !436
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 0, ptr %i.u, align 16, !tbaa !438
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 70
  store i8 0, ptr %i.v, align 2, !tbaa !436
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 71
  store i8 0, ptr %i.w, align 1, !tbaa !438
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 77
  store i8 0, ptr %i.x, align 1, !tbaa !436
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 78
  store i8 0, ptr %i.y, align 2, !tbaa !438
  store i32 10000, ptr %i.a, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = call fastcc i32 @scan_prefix(ptr noundef %0, ptr noundef %i.aa, ptr noundef %1, i32 noundef 12, ptr noundef %i.a) ; 6 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %sljit_emit_op1.exit319, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 5 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv ; 10 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !436 ; 2 uses
  switch i8 %i.ae, label %bb.g [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader
  store i8 -1, ptr %i.ad, align 1, !tbaa !436
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 0, ptr %i.af, align 1, !tbaa !438
  br label %bb.h

bb.c:                                             ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !438
  %i.ai = icmp eq i8 %i.ah, 1
  %i.aj = select i1 %i.ai, i8 7, i8 5
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !438
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  store i8 %i.al, ptr %i.am, align 1, !tbaa !82
  br label %bb.h

bb.d:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !82
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ar)
  %i.at = icmp samesign ugt i8 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 1 ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !438
  %i.aw = icmp eq i8 %i.av, 2                     ; 2 uses
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = select i1 %i.aw, i8 6, i8 4
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !438
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ay = select i1 %i.aw, i8 3, i8 2
  store i8 %i.ay, ptr %i.au, align 1, !tbaa !438
  br label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.az = icmp ne i8 %i.ae, -1
  %i.ba = zext i1 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !438
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %bb.g, %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.i, label %.preheader, !llvm.loop !439

bb.i:                                             ; preds = %bb.h
  %i.bc = call fastcc i32 @sljit_has_cpu_feature(i32 noundef 12)
  %.not = icmp ne i32 %i.bc, 0
  %i.bd = icmp ne i32 %i.ab, 1
  %or.cond639 = and i1 %i.bd, %.not
  br i1 %or.cond639, label %.lr.ph86.i, label %.lr.ph.preheader

.lr.ph86.i:                                       ; preds = %bb.i, %.loopexit.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %.loopexit.i ], [ %wide.trip.count, %bb.i ] ; 3 uses
  %.084.i = phi i32 [ %.3.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %.05183.i = phi i32 [ %.354.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %.05582.i = phi i32 [ %.358.i, %.loopexit.i ], [ 0, %bb.i ] ; 3 uses
  %i.be = trunc nuw nsw i64 %indvars.iv91.i to i32
  %i.bf = call i32 @llvm.usub.sat.i32(i32 %i.be, i32 16) ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %indvars.iv.next92.i = add nsw i64 %indvars.iv91.i, -1 ; 5 uses
  %i.bh = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv.next92.i ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !438 ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = icmp ugt i8 %i.bj, 2
  br i1 %i.bl, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %.lr.ph86.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !82  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !82  ; 2 uses
  %i.bq = sext i32 %i.bf to i64
  %i.br = icmp sgt i64 %indvars.iv.next92.i, %i.bq
  br i1 %i.br, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.bs = trunc nuw nsw i64 %indvars.iv.next92.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bg, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.o ] ; 3 uses
  %.177.i = phi i32 [ %.084.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.o ] ; 5 uses
  %.15276.i = phi i32 [ %.05183.i, %.lr.ph.preheader.i ], [ %.253.i, %bb.o ] ; 4 uses
  %.15675.i = phi i32 [ %.05582.i, %.lr.ph.preheader.i ], [ %.257.i, %bb.o ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !438 ; 2 uses
  %i.bw = icmp ugt i8 %i.bv, 2
  br i1 %i.bw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i
  %i.bx = zext i8 %i.bv to i32
  %i.by = add nuw nsw i32 %i.bx, %i.bk            ; 2 uses
  %.not.i = icmp ult i32 %i.by, %.177.i
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !82  ; 2 uses
  %.not69.i = icmp eq i8 %i.bn, %i.ca
  br i1 %.not69.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !82  ; 2 uses
  %.not70.i = icmp eq i8 %i.bn, %i.cc
  %.not71.i = icmp eq i8 %i.bp, %i.ca
  %.not72.i = icmp eq i8 %i.bp, %i.cc
  %i.cd = or i1 %.not71.i, %.not72.i
  %or.cond73.i = select i1 %.not70.i, i1 true, i1 %i.cd
  br i1 %or.cond73.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = trunc nuw i64 %indvars.iv.i to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %.lr.ph.i
  %.257.i = phi i32 [ %i.bs, %bb.n ], [ %.15675.i, %bb.k ], [ %.15675.i, %.lr.ph.i ], [ %.15675.i, %bb.m ], [ %.15675.i, %bb.l ] ; 2 uses
  %.253.i = phi i32 [ %i.ce, %bb.n ], [ %.15276.i, %bb.k ], [ %.15276.i, %.lr.ph.i ], [ %.15276.i, %bb.m ], [ %.15276.i, %bb.l ] ; 2 uses
  %.2.i = phi i32 [ %i.by, %bb.n ], [ %.177.i, %bb.k ], [ %.177.i, %.lr.ph.i ], [ %.177.i, %bb.m ], [ %.177.i, %bb.l ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = icmp slt i64 %indvars.iv.next.i, %indvars.iv.next92.i
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !440

.loopexit.i:                                      ; preds = %bb.o, %bb.j, %.lr.ph86.i
  %.358.i = phi i32 [ %.05582.i, %.lr.ph86.i ], [ %.05582.i, %bb.j ], [ %.257.i, %bb.o ] ; 3 uses
  %.354.i = phi i32 [ %.05183.i, %.lr.ph86.i ], [ %.05183.i, %bb.j ], [ %.253.i, %bb.o ] ; 3 uses
  %.3.i = phi i32 [ %.084.i, %.lr.ph86.i ], [ %.084.i, %bb.j ], [ %.2.i, %bb.o ] ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv91.i, 2
  br i1 %i.cg, label %.lr.ph86.i, label %._crit_edge.i, !llvm.loop !441

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.ch = icmp eq i32 %.3.i, 0
  br i1 %i.ch, label %.lr.ph.preheader, label %check_fast_forward_char_pair_simd.exit

check_fast_forward_char_pair_simd.exit:           ; preds = %._crit_edge.i
  %i.ci = zext nneg i32 %.358.i to i64
  %i.cj = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !82
  %i.co = sext i32 %.354.i to i64
  %i.cp = getelementptr inbounds [7 x i8], ptr %1, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !82
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !82
  call fastcc void @fast_forward_char_pair_simd(ptr noundef nonnull %0, i32 noundef %.358.i, i8 noundef zeroext %i.cl, i8 noundef zeroext %i.cn, i32 noundef %.354.i, i8 noundef zeroext %i.cr, i8 noundef zeroext %i.ct)
  br label %sljit_emit_op1.exit319

.lr.ph.preheader:                                 ; preds = %bb.i, %._crit_edge.i
  %i.cu = zext nneg i32 %i.ab to i64
  %i.cv = add nuw i32 %i.ab, 1
  %wide.trip.count664 = zext i32 %i.cv to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %indvars.iv661 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next662, %bb.t ] ; 6 uses
  %.0648 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.t ]
  %.0153647 = phi i32 [ 3, %.lr.ph.preheader ], [ %.1154, %bb.t ] ; 4 uses
  %.0155646 = phi i32 [ -1, %.lr.ph.preheader ], [ %.1156, %bb.t ] ; 3 uses
  %.0157645 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1158, %bb.t ] ; 3 uses
  %.not175 = icmp ne i32 %.0648, 0                ; 2 uses
  br i1 %.not175, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph
  %i.cw = trunc nuw nsw i64 %indvars.iv661 to i32
  %i.cx = sub nsw i32 %i.cw, %.0157645            ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, %.0153647
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = add nsw i64 %indvars.iv661, -1          ; 2 uses
  %i.da = getelementptr inbounds [7 x i8], ptr %1, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !436
  %.not176 = icmp eq i8 %i.db, -1                 ; 2 uses
  %i.dc = trunc nsw i64 %i.cz to i32
  %spec.select = select i1 %.not176, i32 %.0155646, i32 %i.dc
  %spec.select179 = select i1 %.not176, i32 %.0153647, i32 %i.cx
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph
  %.1156 = phi i32 [ %.0155646, %.lr.ph ], [ %spec.select, %bb.q ], [ %.0155646, %bb.p ] ; 6 uses
  %.1154 = phi i32 [ %.0153647, %.lr.ph ], [ %spec.select179, %bb.q ], [ %.0153647, %bb.p ] ; 3 uses
  %i.dd = icmp samesign ult i64 %indvars.iv661, %i.cu
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv661
  %i.df = load i8, ptr %i.de, align 1, !tbaa !436
  %.not177 = icmp eq i8 %i.df, -1                 ; 2 uses
  %i.dg = or i1 %.not175, %.not177
  %i.dh = trunc nuw nsw i64 %indvars.iv661 to i32
  %spec.select183 = select i1 %i.dg, i32 %.0157645, i32 %i.dh
  %not..not177 = xor i1 %.not177, true
  %spec.select184 = zext i1 %not..not177 to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1158 = phi i32 [ %.0157645, %bb.r ], [ %spec.select183, %bb.s ]
  %.1 = phi i32 [ 0, %bb.r ], [ %spec.select184, %bb.s ]
  %indvars.iv.next662 = add nuw nsw i64 %indvars.iv661, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next662, %wide.trip.count664
  br i1 %exitcond665.not, label %._crit_edge, label %.lr.ph, !llvm.loop !442

._crit_edge:                                      ; preds = %bb.t
  %i.di = icmp sgt i32 %.1156, -1
  br i1 %i.di, label %bb.u, label %.lr.ph656.preheader

bb.u:                                             ; preds = %._crit_edge
  %i.dj = load ptr, ptr %0, align 8, !tbaa !126   ; 4 uses
  %.val13.i = load i32, ptr %i.dj, align 8, !tbaa !127
  %.not.i185 = icmp eq i32 %.val13.i, 0
  br i1 %.not.i185, label %bb.v, label %sljit_emit_op1.exit319, !prof !128

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !115 ; 2 uses
  %.val.i = load ptr, ptr %i.dl, align 8, !tbaa !86
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %.val12.i = load ptr, ptr %i.dm, align 8, !tbaa !87
  %i.dn = call ptr %.val.i(i64 noundef 264, ptr noundef %.val12.i) #20, !inline_history !443 ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.w, label %.lr.ph652.preheader, !prof !37

bb.w:                                             ; preds = %bb.v
  %i.dp = load i32, ptr %i.dj, align 8, !tbaa !127
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.x, label %sljit_emit_op1.exit319

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.dj, align 8, !tbaa !127
  br label %sljit_emit_op1.exit319

.lr.ph652.preheader:                              ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !57
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !22
  store ptr %i.dn, ptr %i.dr, align 8, !tbaa !57
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.du = trunc i32 %.1154 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.dt, i8 %i.du, i64 256, i1 false)
  %i.dv = zext nneg i32 %.1156 to i64
  %wide.trip.count669 = zext nneg i32 %.1154 to i64
  br label %.lr.ph652

.lr.ph652:                                        ; preds = %.lr.ph652.preheader, %bb.ab
  %indvars.iv666 = phi i64 [ 0, %.lr.ph652.preheader ], [ %indvars.iv.next667, %bb.ab ] ; 4 uses
  %i.dw = sub nsw i64 %i.dv, %indvars.iv666
  %i.dx = getelementptr inbounds [7 x i8], ptr %1, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2 ; 2 uses
  %i.dz = load i8, ptr %i.dx, align 1, !tbaa !436
  %i.ea = zext i8 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ea
  %i.ec = trunc nuw i64 %indvars.iv666 to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph652
  %.0161 = phi ptr [ %i.dy, %.lr.ph652 ], [ %i.ej, %bb.aa ] ; 2 uses
  %i.ed = load i8, ptr %.0161, align 1, !tbaa !82
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !82
  %i.eh = zext i8 %i.eg to i64
  %i.ei = icmp samesign ult i64 %indvars.iv666, %i.eh
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 %i.ec, ptr %i.ef, align 1, !tbaa !82
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ej = getelementptr inbounds nuw i8, ptr %.0161, i64 1 ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.eb
  br i1 %i.ek, label %bb.y, label %bb.ab, !llvm.loop !444

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next667 = add nuw nsw i64 %indvars.iv666, 1 ; 2 uses
  %exitcond670.not = icmp eq i64 %indvars.iv.next667, %wide.trip.count669
  br i1 %exitcond670.not, label %.loopexit.loopexit, label %.lr.ph652, !llvm.loop !445

.loopexit.loopexit:                               ; preds = %bb.ab
  %i.el = ptrtoint ptr %i.dt to i64
  br label %.lr.ph656.preheader

.lr.ph656.preheader:                              ; preds = %._crit_edge, %.loopexit.loopexit
  %.0152 = phi i64 [ 0, %._crit_edge ], [ %i.el, %.loopexit.loopexit ]
  %i.em = zext i32 %.1156 to i64
  %wide.trip.count675 = zext nneg i32 %i.ab to i64
  br label %.lr.ph656

.lr.ph656:                                        ; preds = %.lr.ph656.preheader, %bb.af
  %indvars.iv671 = phi i64 [ 0, %.lr.ph656.preheader ], [ %indvars.iv.next672, %bb.af ] ; 6 uses
  %.0162653 = phi i32 [ -1, %.lr.ph656.preheader ], [ %.1163, %bb.af ] ; 4 uses
  %i.en = icmp eq i64 %indvars.iv671, %i.em
  br i1 %i.en, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph656
  %i.eo = icmp eq i32 %.0162653, -1
  br i1 %i.eo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv671
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !438
  %i.es = icmp ugt i8 %i.er, 1
  %i.et = trunc nuw nsw i64 %indvars.iv671 to i32
  %spec.select181 = select i1 %i.es, i32 %i.et, i32 -1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.eu = sext i32 %.0162653 to i64
  %i.ev = getelementptr inbounds [7 x i8], ptr %1, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !438
  %i.ey = getelementptr inbounds nuw [7 x i8], ptr %1, i64 %indvars.iv671
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !438
  %i.fb = icmp ult i8 %i.ex, %i.fa
  %i.fc = trunc nuw nsw i64 %indvars.iv671 to i32
  %spec.select182 = select i1 %i.fb, i32 %i.fc, i32 %.0162653
end_hunk_0
