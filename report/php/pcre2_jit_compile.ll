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
begin_hunk_1_@compile_backtrackingpath:bb.a
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cni, i64 144
  store i32 0, ptr %i.cpe, align 8, !tbaa !130
  %i.cpf = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.cni, i64 noundef 1, i32 noundef 2, i64 noundef 0, i32 noundef 140, i64 noundef 16) ; 2 uses
  %.not73.i.i268 = icmp eq ptr %i.cpf, null
  br i1 %.not73.i.i268, label %emit_mov.exit44.i, label %sljit_emit_op1.exit18.i, !prof !37

emit_mov.exit44.i:                                ; preds = %bb.zf
  %i.cpg = load i32, ptr %i.cni, align 8, !tbaa !127
  %.not112.i16.i = icmp eq i32 %i.cpg, 0
  br i1 %.not112.i16.i, label %sljit_emit_op1.exit18.thread.i, label %sljit_set_label.exit.i262, !prof !138

sljit_emit_op1.exit18.i:                          ; preds = %bb.zf
  store i8 -119, ptr %i.cpf, align 1, !tbaa !82
  %.pre64.i = load i32, ptr %i.cni, align 8, !tbaa !127
  %i.cph = icmp eq i32 %.pre64.i, 0
  br i1 %i.cph, label %sljit_emit_op1.exit18.thread.i, label %sljit_set_label.exit.i262, !prof !141

sljit_emit_op1.exit18.thread.i:                   ; preds = %sljit_emit_op1.exit18.i, %emit_mov.exit44.i
  %i.cpi = getelementptr inbounds nuw i8, ptr %i.cni, i64 80 ; 3 uses
  %i.cpj = load ptr, ptr %i.cpi, align 8, !tbaa !121 ; 2 uses
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cpj, i64 8 ; 2 uses
  %i.cpl = load i64, ptr %i.cpk, align 8, !tbaa !131 ; 2 uses
  %i.cpm = add i64 %i.cpl, 32                     ; 2 uses
  %i.cpn = icmp ult i64 %i.cpm, 4081
  br i1 %i.cpn, label %bb.zg, label %bb.zh

bb.zg:                                            ; preds = %sljit_emit_op1.exit18.thread.i
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpj, i64 16
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpo, i64 %i.cpl
  store i64 %i.cpm, ptr %i.cpk, align 8, !tbaa !131
  br label %bb.zk

bb.zh:                                            ; preds = %sljit_emit_op1.exit18.thread.i
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cni, i64 56
  %i.cpr = load ptr, ptr %i.cpq, align 8, !tbaa !115 ; 2 uses
  %.val.i.i.i269 = load ptr, ptr %i.cpr, align 8, !tbaa !86
  %i.cps = getelementptr i8, ptr %i.cpr, i64 16
  %.val18.i.i.i270 = load ptr, ptr %i.cps, align 8, !tbaa !87
  %i.cpt = call ptr %.val.i.i.i269(i64 noundef 4096, ptr noundef %.val18.i.i.i270) #20, !inline_history !543 ; 5 uses
  %.not.i.i.i271 = icmp eq ptr %i.cpt, null
  br i1 %.not.i.i.i271, label %bb.zj, label %bb.zi, !prof !37

bb.zi:                                            ; preds = %bb.zh
  %i.cpu = load ptr, ptr %i.cpi, align 8, !tbaa !121
  store ptr %i.cpu, ptr %i.cpt, align 8, !tbaa !134
  store ptr %i.cpt, ptr %i.cpi, align 8, !tbaa !121
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpt, i64 8
  store i64 32, ptr %i.cpv, align 8, !tbaa !131
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpt, i64 16
  br label %bb.zk

bb.zj:                                            ; preds = %bb.zh
  store i32 2, ptr %i.cni, align 8, !tbaa !127
  br label %sljit_set_label.exit.i262

bb.zk:                                            ; preds = %bb.zi, %bb.zg
  %.0.i.ph.i.i272 = phi ptr [ %i.cpw, %bb.zi ], [ %i.cpp, %bb.zg ] ; 7 uses
  store ptr null, ptr %.0.i.ph.i.i272, align 8, !tbaa !144
  %i.cpx = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i272, i64 16 ; 3 uses
  store i64 294912, ptr %i.cpx, align 8, !tbaa !146
  %i.cpy = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i272, i64 24 ; 2 uses
  store ptr null, ptr %i.cpy, align 8, !tbaa !82
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cni, i64 40 ; 2 uses
  %i.cqa = load ptr, ptr %i.cpz, align 8, !tbaa !147 ; 2 uses
  %.not.i20.i.i273 = icmp eq ptr %i.cqa, null
  br i1 %.not.i20.i.i273, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  store ptr %.0.i.ph.i.i272, ptr %i.cqa, align 8, !tbaa !144
  br label %set_jump.exit.i.i274

bb.zm:                                            ; preds = %bb.zk
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cni, i64 16
  store ptr %.0.i.ph.i.i272, ptr %i.cqb, align 8, !tbaa !148
  br label %set_jump.exit.i.i274

set_jump.exit.i.i274:                             ; preds = %bb.zm, %bb.zl
  store ptr %.0.i.ph.i.i272, ptr %i.cpz, align 8, !tbaa !147
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cni, i64 120 ; 2 uses
  %i.cqd = load i64, ptr %i.cqc, align 8, !tbaa !135 ; 2 uses
  %i.cqe = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i272, i64 8
  store i64 %i.cqd, ptr %i.cqe, align 8, !tbaa !149
  %i.cqf = add i64 %i.cqd, 13
  store i64 %i.cqf, ptr %i.cqc, align 8, !tbaa !135
  %i.cqg = getelementptr inbounds nuw i8, ptr %i.cni, i64 72 ; 3 uses
  %i.cqh = load ptr, ptr %i.cqg, align 8, !tbaa !120 ; 2 uses
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 8 ; 2 uses
  %i.cqj = load i64, ptr %i.cqi, align 8, !tbaa !131 ; 2 uses
  %i.cqk = add i64 %i.cqj, 1                      ; 2 uses
  %i.cql = icmp ult i64 %i.cqk, 4081
  br i1 %i.cql, label %bb.zn, label %bb.zo

bb.zn:                                            ; preds = %set_jump.exit.i.i274
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cqh, i64 16
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqm, i64 %i.cqj
  store i64 %i.cqk, ptr %i.cqi, align 8, !tbaa !131
  br label %sljit_emit_jump.exit.i278

bb.zo:                                            ; preds = %set_jump.exit.i.i274
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cni, i64 56
  %i.cqp = load ptr, ptr %i.cqo, align 8, !tbaa !115 ; 2 uses
  %.val.i21.i.i275 = load ptr, ptr %i.cqp, align 8, !tbaa !86
  %i.cqq = getelementptr i8, ptr %i.cqp, i64 16
  %.val18.i22.i.i276 = load ptr, ptr %i.cqq, align 8, !tbaa !87
  %i.cqr = call ptr %.val.i21.i.i275(i64 noundef 4096, ptr noundef %.val18.i22.i.i276) #20, !inline_history !544 ; 5 uses
  %.not.i23.i.i277 = icmp eq ptr %i.cqr, null
  br i1 %.not.i23.i.i277, label %bb.zq, label %bb.zp, !prof !37

bb.zp:                                            ; preds = %bb.zo
  %i.cqs = load ptr, ptr %i.cqg, align 8, !tbaa !120
  store ptr %i.cqs, ptr %i.cqr, align 8, !tbaa !134
  store ptr %i.cqr, ptr %i.cqg, align 8, !tbaa !120
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cqr, i64 8
  store i64 1, ptr %i.cqt, align 8, !tbaa !131
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqr, i64 16
  br label %sljit_emit_jump.exit.i278

bb.zq:                                            ; preds = %bb.zo
  store i32 2, ptr %i.cni, align 8, !tbaa !127
  br label %sljit_set_label.exit.i262

sljit_emit_jump.exit.i278:                        ; preds = %bb.zp, %bb.zn
  %.0.i24.ph.i.i279 = phi ptr [ %i.cqu, %bb.zp ], [ %i.cqn, %bb.zn ]
  store i8 -2, ptr %.0.i24.ph.i.i279, align 1, !tbaa !82
  %i.cqv = getelementptr inbounds nuw i8, ptr %.0539, i64 40
  %i.cqw = load ptr, ptr %i.cqv, align 8, !tbaa !545 ; 2 uses
  %.not6.i.i280 = icmp eq ptr %i.cqw, null
  br i1 %.not6.i.i280, label %sljit_set_label.exit.i262, label %bb.zr, !prof !151

bb.zr:                                            ; preds = %sljit_emit_jump.exit.i278
  %i.cqx = load i64, ptr %i.cpx, align 8, !tbaa !146
  %i.cqy = and i64 %i.cqx, -2
  store i64 %i.cqy, ptr %i.cpx, align 8, !tbaa !146
  store ptr %i.cqw, ptr %i.cpy, align 8, !tbaa !82
  br label %sljit_set_label.exit.i262

sljit_set_label.exit.i262:                        ; preds = %bb.zr, %sljit_emit_jump.exit.i278, %bb.zq, %bb.zj, %sljit_emit_op1.exit18.i, %emit_mov.exit44.i, %sljit_emit_cmp.exit.i260
  %i.cqz = call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.cni) ; 3 uses
  %.not.i21.i = icmp eq ptr %.031.i.i, null
  %.not6.i22.i = icmp eq ptr %i.cqz, null         ; 2 uses
  %or.cond.i23.i = or i1 %.not.i21.i, %.not6.i22.i
  br i1 %or.cond.i23.i, label %sljit_set_label.exit24.i, label %bb.zs, !prof !165

bb.zs:                                            ; preds = %sljit_set_label.exit.i262
  %i.cra = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 16 ; 2 uses
  %i.crb = load i64, ptr %i.cra, align 8, !tbaa !146
  %i.crc = and i64 %i.crb, -2
  store i64 %i.crc, ptr %i.cra, align 8, !tbaa !146
  %i.crd = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 24
  store ptr %i.cqz, ptr %i.crd, align 8, !tbaa !82
  br label %sljit_set_label.exit24.i

sljit_set_label.exit24.i:                         ; preds = %bb.zs, %sljit_set_label.exit.i262
  %i.cre = getelementptr inbounds nuw i8, ptr %.0539, i64 24
  %i.crf = load ptr, ptr %i.cre, align 8, !tbaa !248 ; 2 uses
  %.not4.i.i263 = icmp eq ptr %i.crf, null
  %or.cond.i25.i = or i1 %.not6.i22.i, %.not4.i.i263
  br i1 %or.cond.i25.i, label %sljit_emit_op1.exit74, label %.lr.ph.split.i.i264, !prof !166

.lr.ph.split.i.i264:                              ; preds = %sljit_set_label.exit24.i, %sljit_set_label.exit.i.i266
  %.05.i.i265 = phi ptr [ %i.crm, %sljit_set_label.exit.i.i266 ], [ %i.crf, %sljit_set_label.exit24.i ] ; 2 uses
  %i.crg = load ptr, ptr %.05.i.i265, align 8, !tbaa !167 ; 3 uses
  %.not.i.i26.i = icmp eq ptr %i.crg, null
  br i1 %.not.i.i26.i, label %sljit_set_label.exit.i.i266, label %bb.zt, !prof !165

bb.zt:                                            ; preds = %.lr.ph.split.i.i264
  %i.crh = getelementptr inbounds nuw i8, ptr %i.crg, i64 16 ; 2 uses
  %i.cri = load i64, ptr %i.crh, align 8, !tbaa !146
  %i.crj = and i64 %i.cri, -2
  store i64 %i.crj, ptr %i.crh, align 8, !tbaa !146
  %i.crk = getelementptr inbounds nuw i8, ptr %i.crg, i64 24
  store ptr %i.cqz, ptr %i.crk, align 8, !tbaa !82
  br label %sljit_set_label.exit.i.i266

sljit_set_label.exit.i.i266:                      ; preds = %bb.zt, %.lr.ph.split.i.i264
  %i.crl = getelementptr inbounds nuw i8, ptr %.05.i.i265, i64 8
  %i.crm = load ptr, ptr %i.crl, align 8, !tbaa !169 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.crm, null
  br i1 %.not.i27.i, label %sljit_emit_op1.exit74, label %.lr.ph.split.i.i264, !llvm.loop !170

bb.zu:                                            ; preds = %set_jumps.exit
  %i.crn = load ptr, ptr %0, align 8, !tbaa !126  ; 37 uses
  %i.cro = getelementptr inbounds nuw i8, ptr %.0539, i64 40
  %i.crp = load ptr, ptr %i.cro, align 8, !tbaa !514 ; 2 uses
  %.not.i290 = icmp eq ptr %i.crp, null
  br i1 %.not.i290, label %bb.zw, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  store ptr %i.crp, ptr %i.h, align 8, !tbaa !234
  br label %sljit_emit_op1.exit74

bb.zw:                                            ; preds = %bb.zu
  %i.crq = getelementptr inbounds nuw i8, ptr %.0539, i64 64 ; 3 uses
  %i.crr = load i32, ptr %i.crq, align 8, !tbaa !458
  %i.crs = call i32 @llvm.smax.i32(i32 %i.crr, i32 0) ; 2 uses
  %i.crt = load i32, ptr %i.crn, align 8, !tbaa !127
  %.not.i.i292 = icmp eq i32 %i.crt, 0
  br i1 %.not.i.i292, label %bb.zx, label %sljit_emit_op1.exit.i293, !prof !128

bb.zx:                                            ; preds = %bb.zw
  %i.cru = shl nuw nsw i32 %i.crs, 3
  %i.crv = zext nneg i32 %i.cru to i64
  %i.crw = getelementptr inbounds nuw i8, ptr %i.crn, i64 144
  store i32 0, ptr %i.crw, align 8, !tbaa !130
  %i.crx = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.crn, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 140, i64 noundef %i.crv) ; 2 uses
  %.not66.i.i329 = icmp eq ptr %i.crx, null
  br i1 %.not66.i.i329, label %sljit_emit_op1.exit.i293, label %emit_mov.exit.thread.i330, !prof !37

emit_mov.exit.thread.i330:                        ; preds = %bb.zx
  store i8 -117, ptr %i.crx, align 1, !tbaa !82
  br label %sljit_emit_op1.exit.i293

sljit_emit_op1.exit.i293:                         ; preds = %emit_mov.exit.thread.i330, %bb.zx, %bb.zw
  %.val25.i = load ptr, ptr %0, align 8, !tbaa !126 ; 3 uses
  %i.cry = load i32, ptr %.val25.i, align 8, !tbaa !127
  %.not.i.i.i294 = icmp eq i32 %i.cry, 0
  br i1 %.not.i.i.i294, label %bb.zy, label %free_stack.exit.i295, !prof !128

bb.zy:                                            ; preds = %sljit_emit_op1.exit.i293
  %i.crz = shl i32 %i.crs, 3
  %i.csa = add i32 %i.crz, 24
  %i.csb = zext nneg i32 %i.csa to i64
  %i.csc = getelementptr inbounds nuw i8, ptr %.val25.i, i64 144
  store i32 0, ptr %i.csc, align 8, !tbaa !130
  %i.csd = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val25.i, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.csb) ; 0 uses
  br label %free_stack.exit.i295

free_stack.exit.i295:                             ; preds = %bb.zy, %sljit_emit_op1.exit.i293
  %i.cse = load i32, ptr %i.crn, align 8, !tbaa !127
  %.not.i26.i = icmp eq i32 %i.cse, 0
  br i1 %.not.i26.i, label %bb.zz, label %sljit_emit_jump.exit.i296, !prof !128

bb.zz:                                            ; preds = %free_stack.exit.i295
  %i.csf = getelementptr inbounds nuw i8, ptr %i.crn, i64 80 ; 3 uses
  %i.csg = load ptr, ptr %i.csf, align 8, !tbaa !121 ; 2 uses
  %i.csh = getelementptr inbounds nuw i8, ptr %i.csg, i64 8 ; 2 uses
  %i.csi = load i64, ptr %i.csh, align 8, !tbaa !131 ; 2 uses
  %i.csj = add i64 %i.csi, 32                     ; 2 uses
  %i.csk = icmp ult i64 %i.csj, 4081
  br i1 %i.csk, label %bb.aaa, label %bb.aab

bb.aaa:                                           ; preds = %bb.zz
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csg, i64 16
  %i.csm = getelementptr inbounds nuw i8, ptr %i.csl, i64 %i.csi
  store i64 %i.csj, ptr %i.csh, align 8, !tbaa !131
  br label %bb.aae

bb.aab:                                           ; preds = %bb.zz
  %i.csn = getelementptr inbounds nuw i8, ptr %i.crn, i64 56
  %i.cso = load ptr, ptr %i.csn, align 8, !tbaa !115 ; 2 uses
  %.val.i.i.i320 = load ptr, ptr %i.cso, align 8, !tbaa !86
  %i.csp = getelementptr i8, ptr %i.cso, i64 16
  %.val18.i.i.i321 = load ptr, ptr %i.csp, align 8, !tbaa !87
  %i.csq = call ptr %.val.i.i.i320(i64 noundef 4096, ptr noundef %.val18.i.i.i321) #20, !inline_history !547 ; 5 uses
  %.not.i.i27.i = icmp eq ptr %i.csq, null
  br i1 %.not.i.i27.i, label %bb.aad, label %bb.aac, !prof !37

bb.aac:                                           ; preds = %bb.aab
  %i.csr = load ptr, ptr %i.csf, align 8, !tbaa !121
  store ptr %i.csr, ptr %i.csq, align 8, !tbaa !134
  store ptr %i.csq, ptr %i.csf, align 8, !tbaa !121
  %i.css = getelementptr inbounds nuw i8, ptr %i.csq, i64 8
  store i64 32, ptr %i.css, align 8, !tbaa !131
  %i.cst = getelementptr inbounds nuw i8, ptr %i.csq, i64 16
  br label %bb.aae

bb.aad:                                           ; preds = %bb.aab
  store i32 2, ptr %i.crn, align 8, !tbaa !127
  br label %sljit_emit_jump.exit.i296

bb.aae:                                           ; preds = %bb.aac, %bb.aaa
  %.0.i.ph.i.i322 = phi ptr [ %i.cst, %bb.aac ], [ %i.csm, %bb.aaa ] ; 8 uses
  store ptr null, ptr %.0.i.ph.i.i322, align 8, !tbaa !144
  %i.csu = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i322, i64 16
  store i64 294912, ptr %i.csu, align 8, !tbaa !146
  %i.csv = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i322, i64 24
  store ptr null, ptr %i.csv, align 8, !tbaa !82
  %i.csw = getelementptr inbounds nuw i8, ptr %i.crn, i64 40 ; 2 uses
  %i.csx = load ptr, ptr %i.csw, align 8, !tbaa !147 ; 2 uses
  %.not.i20.i.i323 = icmp eq ptr %i.csx, null
  br i1 %.not.i20.i.i323, label %bb.aag, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  store ptr %.0.i.ph.i.i322, ptr %i.csx, align 8, !tbaa !144
  br label %set_jump.exit.i.i324

bb.aag:                                           ; preds = %bb.aae
  %i.csy = getelementptr inbounds nuw i8, ptr %i.crn, i64 16
  store ptr %.0.i.ph.i.i322, ptr %i.csy, align 8, !tbaa !148
  br label %set_jump.exit.i.i324

set_jump.exit.i.i324:                             ; preds = %bb.aag, %bb.aaf
  store ptr %.0.i.ph.i.i322, ptr %i.csw, align 8, !tbaa !147
  %i.csz = getelementptr inbounds nuw i8, ptr %i.crn, i64 120 ; 2 uses
  %i.cta = load i64, ptr %i.csz, align 8, !tbaa !135 ; 2 uses
  %i.ctb = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i322, i64 8
  store i64 %i.cta, ptr %i.ctb, align 8, !tbaa !149
  %i.ctc = add i64 %i.cta, 13
  store i64 %i.ctc, ptr %i.csz, align 8, !tbaa !135
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.crn, i64 72 ; 3 uses
  %i.cte = load ptr, ptr %i.ctd, align 8, !tbaa !120 ; 2 uses
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cte, i64 8 ; 2 uses
  %i.ctg = load i64, ptr %i.ctf, align 8, !tbaa !131 ; 2 uses
  %i.cth = add i64 %i.ctg, 1                      ; 2 uses
  %i.cti = icmp ult i64 %i.cth, 4081
  br i1 %i.cti, label %bb.aah, label %bb.aai

bb.aah:                                           ; preds = %set_jump.exit.i.i324
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cte, i64 16
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.ctj, i64 %i.ctg
  store i64 %i.cth, ptr %i.ctf, align 8, !tbaa !131
  br label %bb.aal

bb.aai:                                           ; preds = %set_jump.exit.i.i324
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.crn, i64 56
  %i.ctm = load ptr, ptr %i.ctl, align 8, !tbaa !115 ; 2 uses
  %.val.i21.i.i325 = load ptr, ptr %i.ctm, align 8, !tbaa !86
  %i.ctn = getelementptr i8, ptr %i.ctm, i64 16
  %.val18.i22.i.i326 = load ptr, ptr %i.ctn, align 8, !tbaa !87
  %i.cto = call ptr %.val.i21.i.i325(i64 noundef 4096, ptr noundef %.val18.i22.i.i326) #20, !inline_history !548 ; 5 uses
  %.not.i23.i.i327 = icmp eq ptr %i.cto, null
  br i1 %.not.i23.i.i327, label %bb.aak, label %bb.aaj, !prof !37

bb.aaj:                                           ; preds = %bb.aai
  %i.ctp = load ptr, ptr %i.ctd, align 8, !tbaa !120
  store ptr %i.ctp, ptr %i.cto, align 8, !tbaa !134
  store ptr %i.cto, ptr %i.ctd, align 8, !tbaa !120
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.cto, i64 8
  store i64 1, ptr %i.ctq, align 8, !tbaa !131
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cto, i64 16
  br label %bb.aal

bb.aak:                                           ; preds = %bb.aai
  store i32 2, ptr %i.crn, align 8, !tbaa !127
  br label %sljit_emit_jump.exit.i296

bb.aal:                                           ; preds = %bb.aaj, %bb.aah
  %.0.i24.ph.i.i328 = phi ptr [ %i.ctr, %bb.aaj ], [ %i.ctk, %bb.aah ]
  store i8 -2, ptr %.0.i24.ph.i.i328, align 1, !tbaa !82
  br label %sljit_emit_jump.exit.i296

sljit_emit_jump.exit.i296:                        ; preds = %bb.aal, %bb.aak, %bb.aad, %free_stack.exit.i295
  %.0.i.i297 = phi ptr [ %.0.i.ph.i.i322, %bb.aal ], [ null, %bb.aad ], [ null, %bb.aak ], [ null, %free_stack.exit.i295 ] ; 3 uses
  %i.cts = getelementptr inbounds nuw i8, ptr %.0539, i64 56
  %i.ctt = load ptr, ptr %i.cts, align 8, !tbaa !549 ; 2 uses
  %i.ctu = call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.crn) ; 2 uses
  %.not4.i.i298 = icmp eq ptr %i.ctt, null
  %.not6.i.i.i299 = icmp eq ptr %i.ctu, null
  %or.cond.i.i300 = or i1 %.not4.i.i298, %.not6.i.i.i299
  br i1 %or.cond.i.i300, label %set_jumps.exit.i305, label %.lr.ph.split.i.i301, !prof !166

.lr.ph.split.i.i301:                              ; preds = %sljit_emit_jump.exit.i296, %sljit_set_label.exit.i.i303
  %.05.i.i302 = phi ptr [ %i.cub, %sljit_set_label.exit.i.i303 ], [ %i.ctt, %sljit_emit_jump.exit.i296 ] ; 2 uses
  %i.ctv = load ptr, ptr %.05.i.i302, align 8, !tbaa !167 ; 3 uses
  %.not.i.i28.i = icmp eq ptr %i.ctv, null
  br i1 %.not.i.i28.i, label %sljit_set_label.exit.i.i303, label %bb.aam, !prof !165

bb.aam:                                           ; preds = %.lr.ph.split.i.i301
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctv, i64 16 ; 2 uses
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !146
  %i.cty = and i64 %i.ctx, -2
  store i64 %i.cty, ptr %i.ctw, align 8, !tbaa !146
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctv, i64 24
  store ptr %i.ctu, ptr %i.ctz, align 8, !tbaa !82
  br label %sljit_set_label.exit.i.i303

sljit_set_label.exit.i.i303:                      ; preds = %bb.aam, %.lr.ph.split.i.i301
  %i.cua = getelementptr inbounds nuw i8, ptr %.05.i.i302, i64 8
  %i.cub = load ptr, ptr %i.cua, align 8, !tbaa !169 ; 2 uses
  %.not.i29.i304 = icmp eq ptr %i.cub, null
  br i1 %.not.i29.i304, label %set_jumps.exit.i305, label %.lr.ph.split.i.i301, !llvm.loop !170

set_jumps.exit.i305:                              ; preds = %sljit_set_label.exit.i.i303, %sljit_emit_jump.exit.i296
  %i.cuc = load i32, ptr %i.crq, align 8, !tbaa !458
  %i.cud = icmp sgt i32 %i.cuc, -1
  %.pr87.pr.pre95.i = load i32, ptr %i.crn, align 8, !tbaa !127 ; 2 uses
  br i1 %i.cud, label %bb.aan, label %sljit_emit_op2.exit.i306

bb.aan:                                           ; preds = %set_jumps.exit.i305
  %.not.i30.i = icmp eq i32 %.pr87.pr.pre95.i, 0
  br i1 %.not.i30.i, label %bb.aao, label %sljit_emit_op1.exit49.i, !prof !128

bb.aao:                                           ; preds = %bb.aan
  %i.cue = getelementptr inbounds nuw i8, ptr %i.crn, i64 80 ; 6 uses
  %i.cuf = load ptr, ptr %i.cue, align 8, !tbaa !121 ; 2 uses
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cuf, i64 8 ; 2 uses
  %i.cuh = load i64, ptr %i.cug, align 8, !tbaa !131 ; 2 uses
  %i.cui = add i64 %i.cuh, 32                     ; 2 uses
  %i.cuj = icmp ult i64 %i.cui, 4081
  br i1 %i.cuj, label %bb.aap, label %bb.aaq

bb.aap:                                           ; preds = %bb.aao
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuf, i64 16
  %i.cul = getelementptr inbounds nuw i8, ptr %i.cuk, i64 %i.cuh
  store i64 %i.cui, ptr %i.cug, align 8, !tbaa !131
  br label %bb.aat

bb.aaq:                                           ; preds = %bb.aao
  %i.cum = getelementptr inbounds nuw i8, ptr %i.crn, i64 56
  %i.cun = load ptr, ptr %i.cum, align 8, !tbaa !115 ; 2 uses
  %.val.i.i32.i = load ptr, ptr %i.cun, align 8, !tbaa !86
end_hunk_1
