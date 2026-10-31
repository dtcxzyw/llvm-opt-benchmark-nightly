Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_gvec_usdot_idx_4b:bb.a
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.045 = phi i64 [ %i.i, %bb.a ], [ %i.ba, %bb.d ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ay, %bb.d ]    ; 2 uses
  %i.n = shl i64 %.0, 2
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n ; 4 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = sext i8 %i.p to i32
  %i.r = getelementptr i8, ptr %i.o, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = sext i8 %i.s to i32
  %i.u = getelementptr i8, ptr %i.o, i64 2
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i32
  %i.x = getelementptr i8, ptr %i.o, i64 3
  %i.y = load i8, ptr %i.x, align 1
  %i.z = sext i8 %i.y to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.0, %bb.b ], [ %i.ay, %bb.c ]  ; 5 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %3, i64 %.1
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = shl i64 %.1, 2
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = mul nsw i32 %i.af, %i.q
  %i.ah = add i32 %i.ag, %i.ab
  %i.ai = getelementptr i8, ptr %i.ad, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.ak, %i.t
  %i.am = add i32 %i.ah, %i.al
  %i.an = getelementptr i8, ptr %i.ad, i64 2
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.ap, %i.w
  %i.ar = add i32 %i.am, %i.aq
  %i.as = getelementptr i8, ptr %i.ad, i64 3
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = mul nsw i32 %i.au, %i.z
  %i.aw = add i32 %i.ar, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %.1
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = add nsw i64 %.1, 1                      ; 4 uses
  %i.az = icmp slt i64 %i.ay, %.045
  br i1 %i.az, label %bb.c, label %bb.d, !llvm.loop !143

bb.d:                                             ; preds = %bb.c
  %i.ba = add i64 %.1, 5
  %i.bb = icmp slt i64 %i.ay, %i.h
  br i1 %i.bb, label %bb.b, label %bb.e, !llvm.loop !144

bb.e:                                             ; preds = %bb.d
  %i.bc = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bc, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.bd = add nuw nsw i32 %i.e, 8
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.g
  %i.bg = xor i64 %i.g, -1
  %i.bh = add nsw i64 %i.bg, %i.be
  %i.bi = and i64 %i.bh, -8
  %i.bj = add nsw i64 %i.bi, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sdot_idx_4h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 3
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.045 = phi i64 [ %i.i, %bb.a ], [ %i.ax, %bb.d ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.av, %bb.d ]    ; 2 uses
  %.idx47 = shl i64 %.0, 3
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx47 ; 4 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sext i16 %i.n to i64
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = sext i16 %i.q to i64
  %i.s = getelementptr i8, ptr %i.m, i64 4
  %i.t = load i16, ptr %i.s, align 2
  %i.u = sext i16 %i.t to i64
  %i.v = getelementptr i8, ptr %i.m, i64 6
  %i.w = load i16, ptr %i.v, align 2
  %i.x = sext i16 %i.w to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.0, %bb.b ], [ %i.av, %bb.c ]  ; 5 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %3, i64 %.1
  %i.z = load i64, ptr %i.y, align 8
  %.idx48 = shl i64 %.1, 3
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %.idx48 ; 4 uses
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = sext i16 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.o
  %i.ae = add i64 %i.ad, %i.z
  %i.af = getelementptr i8, ptr %i.aa, i64 2
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.r
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = getelementptr i8, ptr %i.aa, i64 4
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = sext i16 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.u
  %i.ao = add i64 %i.aj, %i.an
  %i.ap = getelementptr i8, ptr %i.aa, i64 6
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = sext i16 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.x
  %i.at = add i64 %i.ao, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  store i64 %i.at, ptr %i.au, align 8
  %i.av = add nsw i64 %.1, 1                      ; 4 uses
  %i.aw = icmp slt i64 %i.av, %.045
  br i1 %i.aw, label %bb.c, label %bb.d, !llvm.loop !145

bb.d:                                             ; preds = %bb.c
  %i.ax = add i64 %.1, 3
  %i.ay = icmp slt i64 %i.av, %i.h
  br i1 %i.ay, label %bb.b, label %bb.e, !llvm.loop !146

bb.e:                                             ; preds = %bb.d
  %i.az = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.az, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ba = add nuw nsw i32 %i.e, 8
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %0, i64 %i.g
  %i.bd = xor i64 %i.g, -1
  %i.be = add nsw i64 %i.bd, %i.bb
  %i.bf = and i64 %i.be, -8
  %i.bg = add nsw i64 %i.bf, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.bg, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_udot_idx_4h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 3
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  %scevgep = getelementptr i8, ptr %1, i64 2
  %scevgep52 = getelementptr i8, ptr %1, i64 4
  %scevgep54 = getelementptr i8, ptr %1, i64 6
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.045 = phi i64 [ %i.i, %bb.a ], [ %i.df, %.loopexit ] ; 4 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 11 uses
  %.idx47 = shl i64 %.0, 3                        ; 7 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx47 ; 4 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr i8, ptr %i.m, i64 4
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i64                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 6
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  %i.y = add nsw i64 %.0, 1
  %i.z = tail call i64 @llvm.smax.i64(i64 %.045, i64 %i.y)
  %i.aa = sub i64 %i.z, %.0                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 26
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.ab = add nsw i64 %.0, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.045, i64 %i.ab)
  %i.ac = xor i64 %.0, -1
  %i.ad = add i64 %smax, %i.ac                    ; 2 uses
  %scevgep51 = getelementptr i8, ptr %scevgep, i64 %.idx47 ; 2 uses
  %mul.result = shl i64 %i.ad, 3                  ; 3 uses
  %mul.overflow = icmp ugt i64 %i.ad, 2305843009213693951
  %i.ae = getelementptr i8, ptr %scevgep51, i64 %mul.result
  %i.af = icmp ult ptr %i.ae, %scevgep51
  %scevgep53 = getelementptr i8, ptr %scevgep52, i64 %.idx47 ; 2 uses
  %i.ag = getelementptr i8, ptr %scevgep53, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %scevgep53
  %scevgep55 = getelementptr i8, ptr %scevgep54, i64 %.idx47 ; 2 uses
  %i.ai = getelementptr i8, ptr %scevgep55, i64 %mul.result
  %i.aj = icmp ult ptr %i.ai, %scevgep55
  %i.ak = or i1 %i.aj, %mul.overflow
  %i.al = or i1 %i.ah, %i.af
  %i.am = or i1 %i.al, %i.ak
  br i1 %i.am, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep56 = getelementptr i8, ptr %0, i64 %.idx47 ; 2 uses
  %5 = add nsw i64 %.0, 1
  %smax57 = tail call i64 @llvm.smax.i64(i64 %.045, i64 %5)
  %i.an = shl i64 %smax57, 3                      ; 3 uses
  %scevgep58 = getelementptr i8, ptr %0, i64 %i.an ; 2 uses
  %scevgep59 = getelementptr i8, ptr %3, i64 %.idx47
  %scevgep60 = getelementptr i8, ptr %3, i64 %i.an
  %scevgep61 = getelementptr i8, ptr %1, i64 %.idx47
  %scevgep62 = getelementptr i8, ptr %1, i64 %i.an
  %bound0 = icmp ult ptr %scevgep56, %scevgep60
  %bound1 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  %bound063 = icmp ult ptr %scevgep56, %scevgep62
  %bound164 = icmp ult ptr %scevgep61, %scevgep58
  %found.conflict65 = and i1 %bound063, %bound164
  %conflict.rdx = or i1 %found.conflict, %found.conflict65
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -2                      ; 3 uses
  %i.ao = add i64 %.0, %n.vec                     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.o, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert66 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat67 = shufflevector <2 x i64> %broadcast.splatinsert66, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert68 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat69 = shufflevector <2 x i64> %broadcast.splatinsert68, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat71 = shufflevector <2 x i64> %broadcast.splatinsert70, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = add i64 %.0, %index                     ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ap
  %wide.load = load <2 x i64>, ptr %i.aq, align 8, !alias.scope !154
  %i.ar = shl i64 %i.ap, 3
  %i.as = shl i64 %i.ap, 3
  %i.at = getelementptr inbounds i8, ptr %1, i64 %i.ar ; 4 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.as     ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i16, ptr %i.at, align 2, !alias.scope !155
  %i.ax = load i16, ptr %i.av, align 2, !alias.scope !155
  %i.ay = insertelement <2 x i16> poison, i16 %i.aw, i64 0
  %i.az = insertelement <2 x i16> %i.ay, i16 %i.ax, i64 1
  %i.ba = zext <2 x i16> %i.az to <2 x i64>
  %i.bb = mul nuw nsw <2 x i64> %broadcast.splat, %i.ba
  %i.bc = add <2 x i64> %i.bb, %wide.load
  %i.bd = getelementptr i8, ptr %i.at, i64 2
  %i.be = getelementptr i8, ptr %i.au, i64 10
  %i.bf = load i16, ptr %i.bd, align 2, !alias.scope !155
  %i.bg = load i16, ptr %i.be, align 2, !alias.scope !155
  %i.bh = insertelement <2 x i16> poison, i16 %i.bf, i64 0
  %i.bi = insertelement <2 x i16> %i.bh, i16 %i.bg, i64 1
  %i.bj = zext <2 x i16> %i.bi to <2 x i64>
  %i.bk = mul nuw nsw <2 x i64> %broadcast.splat67, %i.bj
  %i.bl = add <2 x i64> %i.bc, %i.bk
  %i.bm = getelementptr i8, ptr %i.at, i64 4
  %i.bn = getelementptr i8, ptr %i.au, i64 12
  %i.bo = load i16, ptr %i.bm, align 2, !alias.scope !155
  %i.bp = load i16, ptr %i.bn, align 2, !alias.scope !155
  %i.bq = insertelement <2 x i16> poison, i16 %i.bo, i64 0
  %i.br = insertelement <2 x i16> %i.bq, i16 %i.bp, i64 1
  %i.bs = zext <2 x i16> %i.br to <2 x i64>
  %i.bt = mul nuw nsw <2 x i64> %broadcast.splat69, %i.bs
  %i.bu = add <2 x i64> %i.bl, %i.bt
  %i.bv = getelementptr i8, ptr %i.at, i64 6
  %i.bw = getelementptr i8, ptr %i.au, i64 14
  %i.bx = load i16, ptr %i.bv, align 2, !alias.scope !155
  %i.by = load i16, ptr %i.bw, align 2, !alias.scope !155
  %i.bz = insertelement <2 x i16> poison, i16 %i.bx, i64 0
  %i.ca = insertelement <2 x i16> %i.bz, i16 %i.by, i64 1
  %i.cb = zext <2 x i16> %i.ca to <2 x i64>
  %i.cc = mul nuw nsw <2 x i64> %broadcast.splat71, %i.cb
  %i.cd = add <2 x i64> %i.bu, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ap
  store <2 x i64> %i.cd, ptr %i.ce, align 8, !alias.scope !156, !noalias !157
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ao, -1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.b, %middle.block
  %.1.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %vector.scevcheck ], [ %.0, %bb.b ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi i64 [ %i.dd, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 5 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %3, i64 %.1
  %i.ch = load i64, ptr %i.cg, align 8
  %.idx48 = shl i64 %.1, 3
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %.idx48 ; 4 uses
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cj to i64
  %i.cl = mul nuw nsw i64 %i.ck, %i.o
  %i.cm = add i64 %i.cl, %i.ch
  %i.cn = getelementptr i8, ptr %i.ci, i64 2
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = zext i16 %i.co to i64
  %i.cq = mul nuw nsw i64 %i.cp, %i.r
  %i.cr = add i64 %i.cm, %i.cq
  %i.cs = getelementptr i8, ptr %i.ci, i64 4
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext i16 %i.ct to i64
  %i.cv = mul nuw nsw i64 %i.cu, %i.u
  %i.cw = add i64 %i.cr, %i.cv
  %i.cx = getelementptr i8, ptr %i.ci, i64 6
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = zext i16 %i.cy to i64
  %i.da = mul nuw nsw i64 %i.cz, %i.x
  %i.db = add i64 %i.cw, %i.da
  %i.dc = getelementptr inbounds [8 x i8], ptr %0, i64 %.1
  store i64 %i.db, ptr %i.dc, align 8
  %i.dd = add nsw i64 %.1, 1                      ; 3 uses
  %i.de = icmp slt i64 %i.dd, %.045
  br i1 %i.de, label %scalar.ph, label %.loopexit, !llvm.loop !152

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.1, %scalar.ph ]
  %.lcssa = phi i64 [ %i.ao, %middle.block ], [ %i.dd, %scalar.ph ] ; 2 uses
  %i.df = add i64 %.1.lcssa, 3
  %i.dg = icmp slt i64 %.lcssa, %i.h
  br i1 %i.dg, label %bb.b, label %bb.c, !llvm.loop !153

bb.c:                                             ; preds = %.loopexit
  %i.dh = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.dh, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.di = add nuw nsw i32 %i.e, 8
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr i8, ptr %0, i64 %i.g
  %i.dl = xor i64 %i.g, -1
  %i.dm = add nsw i64 %i.dl, %i.dj
  %i.dn = and i64 %i.dm, -8
  %i.do = add nsw i64 %i.dn, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %i.do, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sdot_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %i.j = getelementptr i8, ptr %3, i64 %i.g
  %i.k = getelementptr i8, ptr %1, i64 %i.g
  %i.l = getelementptr i8, ptr %2, i64 %i.g
  %bound0 = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %3, %i.i
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %0, %i.k
  %bound134 = icmp ult ptr %1, %i.i
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %0, %i.l
  %bound137 = icmp ult ptr %2, %i.i
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !alias.scope !165
  %i.n = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.n
  %wide.vec = load <8 x i16>, ptr %i.o, align 2, !alias.scope !166 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec40 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.p = sext <4 x i16> %strided.vec to <4 x i32>
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.n
  %wide.vec41 = load <8 x i16>, ptr %i.q, align 2, !alias.scope !167 ; 2 uses
  %strided.vec42 = shufflevector <8 x i16> %wide.vec41, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec43 = shufflevector <8 x i16> %wide.vec41, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.r = sext <4 x i16> %strided.vec42 to <4 x i32>
  %i.s = mul nsw <4 x i32> %i.r, %i.p
  %i.t = add <4 x i32> %i.s, %wide.load
  %i.u = sext <4 x i16> %strided.vec40 to <4 x i32>
  %i.v = sext <4 x i16> %strided.vec43 to <4 x i32>
end_hunk_0
begin_hunk_1_@helper_gvec_sdot_2h:bb.a

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022 = phi i64 [ %i.av, %scalar.ph ], [ %.022.ph, %scalar.ph.preheader ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = shl nuw nsw i64 %.022, 1                ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ac
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = sext i16 %i.ah to i32
  %i.aj = mul nsw i32 %i.ai, %i.af
  %i.ak = add i32 %i.aj, %i.ab
  %i.al = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.al
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = sext i16 %i.aq to i32
  %i.as = mul nsw i32 %i.ar, %i.ao
  %i.at = add i32 %i.ak, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.022
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.av, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !164

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.aw = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.aw, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.ax = add nuw nsw i32 %i.e, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %0, i64 %i.g
  %i.ba = xor i64 %i.g, -1
  %i.bb = add nsw i64 %i.ba, %i.ay
  %i.bc = and i64 %i.bb, -8
  %i.bd = add nsw i64 %i.bc, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bd, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_udot_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 3 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 7 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 %i.g       ; 3 uses
  %i.j = getelementptr i8, ptr %3, i64 %i.g
  %i.k = getelementptr i8, ptr %1, i64 %i.g
  %i.l = getelementptr i8, ptr %2, i64 %i.g
  %bound0 = icmp ult ptr %0, %i.j
  %bound1 = icmp ult ptr %3, %i.i
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %0, %i.k
  %bound134 = icmp ult ptr %1, %i.i
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %bound036 = icmp ult ptr %0, %i.l
  %bound137 = icmp ult ptr %2, %i.i
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  br i1 %conflict.rdx39, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 536870908                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x i32>, ptr %i.m, align 4, !alias.scope !177
  %i.n = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.n
  %wide.vec = load <8 x i16>, ptr %i.o, align 2, !alias.scope !178
  %i.p = freeze <8 x i16> %wide.vec               ; 2 uses
  %i.q = bitcast <8 x i16> %i.p to <4 x i32>
  %i.r = bitcast <8 x i16> %i.p to <4 x i32>
  %i.s = and <4 x i32> %i.r, splat (i32 65535)
  %i.t = lshr <4 x i32> %i.q, splat (i32 16)
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.n
  %wide.vec41 = load <8 x i16>, ptr %i.u, align 2, !alias.scope !179
  %i.v = freeze <8 x i16> %wide.vec41             ; 2 uses
  %i.w = bitcast <8 x i16> %i.v to <4 x i32>
  %i.x = bitcast <8 x i16> %i.v to <4 x i32>
  %i.y = and <4 x i32> %i.x, splat (i32 65535)
  %i.z = lshr <4 x i32> %i.w, splat (i32 16)
  %i.aa = mul nuw <4 x i32> %i.y, %i.s
  %i.ab = add <4 x i32> %i.aa, %wide.load
  %i.ac = mul nuw <4 x i32> %i.z, %i.t
  %i.ad = add <4 x i32> %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.ad, ptr %i.ae, align 4, !alias.scope !180, !noalias !181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.022 = phi i64 [ %i.bb, %scalar.ph ], [ %.022.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = shl nuw nsw i64 %.022, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ai
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = mul nuw i32 %i.ao, %i.al
  %i.aq = add i32 %i.ap, %i.ah
  %i.ar = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ar
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = mul nuw i32 %i.ax, %i.au
  %i.az = add i32 %i.aq, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.022
  store i32 %i.az, ptr %i.ba, align 4
  %i.bb = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.h
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !176

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.bc = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bc, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.bd = add nuw nsw i32 %i.e, 8
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.g
  %i.bg = xor i64 %i.g, -1
  %i.bh = add nsw i64 %i.bg, %i.be
  %i.bi = and i64 %i.bh, -8
  %i.bj = add nsw i64 %i.bi, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bj, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.loopexit, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_sdot_idx_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  %scevgep = getelementptr i8, ptr %1, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.035 = phi i64 [ %i.i, %bb.a ], [ %i.be, %.loopexit ] ; 4 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 11 uses
  %.idx37 = shl i64 %.0, 2                        ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx37 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = add nsw i64 %.0, 1
  %i.t = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.s)
  %i.u = sub i64 %i.t, %.0                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.v = add nsw i64 %.0, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.v)
  %i.w = xor i64 %.0, -1
  %i.x = add i64 %smax, %i.w                      ; 2 uses
  %scevgep41 = getelementptr i8, ptr %scevgep, i64 %.idx37 ; 2 uses
  %mul.result = shl i64 %i.x, 2
  %mul.overflow = icmp ugt i64 %i.x, 4611686018427387903
  %i.y = getelementptr i8, ptr %scevgep41, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep41
  %i.aa = or i1 %i.z, %mul.overflow
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep42 = getelementptr i8, ptr %0, i64 %.idx37 ; 2 uses
  %5 = add nsw i64 %.0, 1
  %smax43 = tail call i64 @llvm.smax.i64(i64 %.035, i64 %5)
  %i.ab = shl i64 %smax43, 2                      ; 3 uses
  %scevgep44 = getelementptr i8, ptr %0, i64 %i.ab ; 2 uses
  %scevgep45 = getelementptr i8, ptr %3, i64 %.idx37
  %scevgep46 = getelementptr i8, ptr %3, i64 %i.ab
  %scevgep47 = getelementptr i8, ptr %1, i64 %.idx37
  %scevgep48 = getelementptr i8, ptr %1, i64 %i.ab
  %bound0 = icmp ult ptr %scevgep42, %scevgep46
  %bound1 = icmp ult ptr %scevgep45, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %scevgep42, %scevgep48
  %bound150 = icmp ult ptr %scevgep47, %scevgep44
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.ac = add i64 %.0, %n.vec                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %.0, %index                     ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ad
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !alias.scope !189
  %i.af = shl i64 %i.ad, 2
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af
  %wide.vec = load <8 x i16>, ptr %i.ag, align 2, !alias.scope !190 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec54 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ah = sext <4 x i16> %strided.vec to <4 x i32>
  %i.ai = mul nsw <4 x i32> %broadcast.splat, %i.ah
  %i.aj = add <4 x i32> %i.ai, %wide.load
  %i.ak = sext <4 x i16> %strided.vec54 to <4 x i32>
  %i.al = mul nsw <4 x i32> %broadcast.splat53, %i.ak
  %i.am = add <4 x i32> %i.aj, %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  store <4 x i32> %i.am, ptr %i.an, align 4, !alias.scope !191, !noalias !192
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ac, -1
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.b, %middle.block
  %.1.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %vector.scevcheck ], [ %.0, %bb.b ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi i64 [ %i.bc, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %3, i64 %.1
  %i.aq = load i32, ptr %i.ap, align 4
  %.idx38 = shl i64 %.1, 2
  %i.ar = getelementptr inbounds i8, ptr %1, i64 %.idx38 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = sext i16 %i.as to i32
  %i.au = mul nsw i32 %i.at, %i.o
  %i.av = add i32 %i.au, %i.aq
  %i.aw = getelementptr i8, ptr %i.ar, i64 2
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = sext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.ay, %i.r
  %i.ba = add i32 %i.av, %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.1
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = add nsw i64 %.1, 1                      ; 3 uses
  %i.bd = icmp slt i64 %i.bc, %.035
  br i1 %i.bd, label %scalar.ph, label %.loopexit, !llvm.loop !187

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.1, %scalar.ph ]
  %.lcssa = phi i64 [ %i.ac, %middle.block ], [ %i.bc, %scalar.ph ] ; 2 uses
  %i.be = add i64 %.1.lcssa, 5
  %i.bf = icmp slt i64 %.lcssa, %i.h
  br i1 %i.bf, label %bb.b, label %bb.c, !llvm.loop !188

bb.c:                                             ; preds = %.loopexit
  %i.bg = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bg, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bh = add nuw nsw i32 %i.e, 8
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr i8, ptr %0, i64 %i.g
  %i.bk = xor i64 %i.g, -1
  %i.bl = add nsw i64 %i.bk, %i.bi
  %i.bm = and i64 %i.bl, -8
  %i.bn = add nsw i64 %i.bm, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bj, i8 0, i64 %i.bn, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_gvec_udot_idx_2h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 4)
  %i.j = ashr i32 %4, 10
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %2, i64 %.idx
  %scevgep = getelementptr i8, ptr %1, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.035 = phi i64 [ %i.i, %bb.a ], [ %i.bh, %.loopexit ] ; 4 uses
  %.0 = phi i64 [ 0, %bb.a ], [ %.lcssa, %.loopexit ] ; 11 uses
  %.idx37 = shl i64 %.0, 2                        ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %.idx37 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 2
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = add nsw i64 %.0, 1
  %i.t = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.s)
  %i.u = sub i64 %i.t, %.0                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %bb.b
  %i.v = add nsw i64 %.0, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %.035, i64 %i.v)
  %i.w = xor i64 %.0, -1
  %i.x = add i64 %smax, %i.w                      ; 2 uses
  %scevgep41 = getelementptr i8, ptr %scevgep, i64 %.idx37 ; 2 uses
  %mul.result = shl i64 %i.x, 2
  %mul.overflow = icmp ugt i64 %i.x, 4611686018427387903
  %i.y = getelementptr i8, ptr %scevgep41, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep41
  %i.aa = or i1 %i.z, %mul.overflow
  br i1 %i.aa, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep42 = getelementptr i8, ptr %0, i64 %.idx37 ; 2 uses
  %5 = add nsw i64 %.0, 1
  %smax43 = tail call i64 @llvm.smax.i64(i64 %.035, i64 %5)
  %i.ab = shl i64 %smax43, 2                      ; 3 uses
  %scevgep44 = getelementptr i8, ptr %0, i64 %i.ab ; 2 uses
  %scevgep45 = getelementptr i8, ptr %3, i64 %.idx37
  %scevgep46 = getelementptr i8, ptr %3, i64 %i.ab
  %scevgep47 = getelementptr i8, ptr %1, i64 %.idx37
  %scevgep48 = getelementptr i8, ptr %1, i64 %i.ab
  %bound0 = icmp ult ptr %scevgep42, %scevgep46
  %bound1 = icmp ult ptr %scevgep45, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %scevgep42, %scevgep48
  %bound150 = icmp ult ptr %scevgep47, %scevgep44
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %i.ac = add i64 %.0, %n.vec                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add i64 %.0, %index                     ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ad
  %wide.load = load <4 x i32>, ptr %i.ae, align 4, !alias.scope !200
  %i.af = shl i64 %i.ad, 2
  %i.ag = getelementptr inbounds i8, ptr %1, i64 %i.af
  %wide.vec = load <8 x i16>, ptr %i.ag, align 2, !alias.scope !201
  %i.ah = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.ai = bitcast <8 x i16> %i.ah to <4 x i32>
  %i.aj = bitcast <8 x i16> %i.ah to <4 x i32>
  %i.ak = and <4 x i32> %i.aj, splat (i32 65535)
  %i.al = lshr <4 x i32> %i.ai, splat (i32 16)
  %i.am = mul nuw <4 x i32> %i.ak, %broadcast.splat
  %i.an = add <4 x i32> %i.am, %wide.load
  %i.ao = mul nuw <4 x i32> %i.al, %broadcast.splat53
  %i.ap = add <4 x i32> %i.an, %i.ao
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  store <4 x i32> %i.ap, ptr %i.aq, align 4, !alias.scope !202, !noalias !203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %ind.escape = add i64 %i.ac, -1
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %bb.b, %middle.block
  %.1.ph = phi i64 [ %.0, %vector.memcheck ], [ %.0, %vector.scevcheck ], [ %.0, %bb.b ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.1 = phi i64 [ %i.bf, %scalar.ph ], [ %.1.ph, %scalar.ph.preheader ] ; 5 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %3, i64 %.1
  %i.at = load i32, ptr %i.as, align 4
  %.idx38 = shl i64 %.1, 2
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.idx38 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nuw i32 %i.aw, %i.o
  %i.ay = add i32 %i.ax, %i.at
  %i.az = getelementptr i8, ptr %i.au, i64 2
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32
  %i.bc = mul nuw i32 %i.bb, %i.r
  %i.bd = add i32 %i.ay, %i.bc
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.1
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = add nsw i64 %.1, 1                      ; 3 uses
  %i.bg = icmp slt i64 %i.bf, %.035
  br i1 %i.bg, label %scalar.ph, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.1.lcssa = phi i64 [ %ind.escape, %middle.block ], [ %.1, %scalar.ph ]
  %.lcssa = phi i64 [ %i.ac, %middle.block ], [ %i.bf, %scalar.ph ] ; 2 uses
  %i.bh = add i64 %.1.lcssa, 5
  %i.bi = icmp slt i64 %.lcssa, %i.h
  br i1 %i.bi, label %bb.b, label %bb.c, !llvm.loop !199

bb.c:                                             ; preds = %.loopexit
  %i.bj = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bj, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.bk = add nuw nsw i32 %i.e, 8
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %0, i64 %i.g
  %i.bn = xor i64 %i.g, -1
  %i.bo = add nsw i64 %i.bn, %i.bl
  %i.bp = and i64 %i.bo, -8
  %i.bq = add nsw i64 %i.bp, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %i.bq, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcaddh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = and i32 %4, 1024
  %.not = icmp eq i32 %i.h, 0
  %i.i = and i32 %4, 2048
  %.not44 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = lshr exact i64 %i.g, 1                   ; 4 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not44, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %.split.us.split.us
  %.03538.us.us = phi i64 [ %i.y, %.split.us.split.us ], [ 0, %.split.us ] ; 5 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538.us.us
  %i.l = load i16, ptr %i.k, align 2
  %i.m = or disjoint i64 %.03538.us.us, 1         ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.m
  %i.q = load i16, ptr %i.p, align 2
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538.us.us
  %i.s = load i16, ptr %i.r, align 2
  %i.t = xor i16 %i.o, -32768
  %i.u = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.l, i16 noundef zeroext %i.t, ptr noundef %3) #18
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03538.us.us
  store i16 %i.u, ptr %i.v, align 2
  %i.w = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.q, i16 noundef zeroext %i.s, ptr noundef %3) #18
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.m
  store i16 %i.w, ptr %i.x, align 2
  %i.y = add nuw nsw i64 %.03538.us.us, 2         ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, %i.j
  br i1 %i.z, label %.split.us.split.us, label %.split40.us, !llvm.loop !204

.split.us.split:                                  ; preds = %.split.us, %.split.us.split
  %.03538.us = phi i64 [ %i.aq, %.split.us.split ], [ 0, %.split.us ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538.us
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = or disjoint i64 %.03538.us, 1           ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2            ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ac
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538.us
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = and i16 %i.ae, 32767
  %i.ak = icmp samesign ugt i16 %i.aj, 31744
  %i.al = xor i16 %i.ae, -32768
  %spec.select = select i1 %i.ak, i16 %i.ae, i16 %i.al
  %i.am = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.ab, i16 noundef zeroext %spec.select, ptr noundef %3) #18
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03538.us
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.ag, i16 noundef zeroext %i.ai, ptr noundef %3) #18
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.03538.us, 2           ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.j
  br i1 %i.ar, label %.split.us.split, label %.split40.us, !llvm.loop !204

.split:                                           ; preds = %bb.a
  br i1 %.not44, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %.split.split.us
  %.03538.us41 = phi i64 [ %i.bg, %.split.split.us ], [ 0, %.split ] ; 5 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538.us41
  %i.at = load i16, ptr %i.as, align 2
  %i.au = or disjoint i64 %.03538.us41, 1         ; 3 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.au
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.03538.us41
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = xor i16 %i.ba, -32768
  %i.bc = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.at, i16 noundef zeroext %i.aw, ptr noundef %3) #18
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.03538.us41
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = tail call zeroext i16 @float16_add(i16 noundef zeroext %i.ay, i16 noundef zeroext %i.bb, ptr noundef %3) #18
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.au
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = add nuw nsw i64 %.03538.us41, 2         ; 2 uses
  %i.bh = icmp samesign ult i64 %i.bg, %i.j
  br i1 %i.bh, label %.split.split.us, label %.split40.us, !llvm.loop !204

.split.split:                                     ; preds = %.split, %.split.split
  %.03538 = phi i64 [ %i.by, %.split.split ], [ 0, %.split ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.03538
  %i.bj = load i16, ptr %i.bi, align 2
end_hunk_1
