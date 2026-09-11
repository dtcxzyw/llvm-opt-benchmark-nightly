Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BigIntSupport?download=true
inline.NumInlined: 1517
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj:bb.a
  store ptr %i.b, ptr %i.k, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.l = getelementptr i8, ptr %.pre.i.i, i64 16384
  store ptr %i.j, ptr %8, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %i.m, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.n = getelementptr i8, ptr %.pre.i.i, i64 24576
  store ptr %i.n, ptr %i.i, align 8, !tbaa !28
  store ptr %i.l, ptr %9, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %i.o, align 8, !tbaa !111
  %i.p = load i32, ptr %1, align 4, !tbaa !9
  %i.q = shl i32 %3, 3                            ; 6 uses
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = icmp ugt i32 %i.q, 8192
  br i1 %i.s, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i32 %i.q, 0                      ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.pre.i.i, ptr readonly align 1 %2, i64 %i.r, i1 false)
  %i.u = sub nuw nsw i32 8192, %i.q
  %i.v = getelementptr i8, ptr %.pre.i.i, i64 %i.r ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !10
  %i.y = ashr i8 %i.x, 7
  %i.z = zext nneg i32 %i.u to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.v, i8 %i.y, i64 %i.z, i1 false)
  %i.aa = getelementptr i8, ptr %.pre.i.i, i64 8191
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !10  ; 6 uses
  %i.ac = ashr i8 %i.ab, 7                        ; 3 uses
  %i.ad = icmp eq i8 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i.i.preheader, label %.critedge.thread.i.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c, %.lr.ph.i.i.i.3
  %i.ae = phi i64 [ %i.az, %.lr.ph.i.i.i.3 ], [ 8191, %bb.c ] ; 7 uses
  %.sroa.10.029.i4.i.i.i223 = phi i64 [ %i.at, %.lr.ph.i.i.i.3 ], [ 8192, %bb.c ]
  %i.af = getelementptr i8, ptr %.pre.i.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10  ; 2 uses
  %i.ai = icmp eq i8 %i.ah, %i.ab
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.critedge.i.loopexit.i.i.i, !llvm.loop !0

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader
  %i.aj = add nsw i64 %i.ae, -1                   ; 3 uses
  %i.ak = getelementptr i8, ptr %.pre.i.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10  ; 2 uses
  %i.an = icmp eq i8 %i.am, %i.ab
  br i1 %i.an, label %.lr.ph.i.i.i.1, label %.critedge.i.loopexit.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.ao = add nsw i64 %i.ae, -2                   ; 3 uses
  %i.ap = getelementptr i8, ptr %.pre.i.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10  ; 2 uses
  %i.as = icmp eq i8 %i.ar, %i.ab
  br i1 %i.as, label %.lr.ph.i.i.i.2, label %.critedge.i.loopexit.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.at = add nsw i64 %i.ae, -3                   ; 4 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.critedge.thread.i.i.i.i, label %.lr.ph.i.i.i.preheader.3

.lr.ph.i.i.i.preheader.3:                         ; preds = %.lr.ph.i.i.i.2
  %i.av = getelementptr i8, ptr %.pre.i.i, i64 %i.at
  %i.aw = getelementptr i8, ptr %i.av, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, %i.ab
  br i1 %i.ay, label %.lr.ph.i.i.i.3, label %.critedge.i.loopexit.i.i.i, !llvm.loop !0

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.preheader.3
  %i.az = add nsw i64 %i.ae, -4
  br label %.lr.ph.i.i.i.preheader

.critedge.i.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.preheader.3, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader
  %.lcssa238 = phi i64 [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.1 ], [ %i.at, %.lr.ph.i.i.i.preheader.3 ]
  %.sroa.10.029.i4.i.i.i223.lcssa = phi i64 [ %.sroa.10.029.i4.i.i.i223, %.lr.ph.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.1 ], [ %i.ao, %.lr.ph.i.i.i.preheader.3 ]
  %.lcssa235 = phi i8 [ %i.ah, %.lr.ph.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i ], [ %i.ar, %.lr.ph.i.i.i.1 ], [ %i.ax, %.lr.ph.i.i.i.preheader.3 ]
  %.pre.i.i.i = ashr i8 %.lcssa235, 7
  br label %.critedge.thread.i.i.i.i

.critedge.thread.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.2, %.critedge.i.loopexit.i.i.i, %bb.c
  %.sroa.10.028.i.i.i.i = phi i64 [ 8192, %bb.c ], [ %.lcssa238, %.critedge.i.loopexit.i.i.i ], [ 0, %.lr.ph.i.i.i.2 ]
  %.sroa.5.026.i.i.i.i = phi i64 [ 8192, %bb.c ], [ %.sroa.10.029.i4.i.i.i223.lcssa, %.critedge.i.loopexit.i.i.i ], [ 1, %.lr.ph.i.i.i.2 ]
  %i.ba = phi i8 [ %i.ac, %bb.c ], [ %.pre.i.i.i, %.critedge.i.loopexit.i.i.i ], [ 0, %.lr.ph.i.i.i.2 ]
  %i.bb = icmp eq i8 %i.ba, %i.ac
  %.sroa.3.0.copyload4.i.i.i.i = select i1 %i.bb, i64 %.sroa.10.028.i.i.i.i, i64 %.sroa.5.026.i.i.i.i
  %i.bc = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i.i to i32
  %i.bd = add nuw i32 %i.bc, 7
  %i.be = lshr i32 %i.bd, 3
  br label %bb.d

_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit: ; preds = %bb.a
  store i32 0, ptr %i.b, align 4, !tbaa !9
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

bb.d:                                             ; preds = %bb.b, %.critedge.thread.i.i.i.i
  %.sink.i.i.ph = phi i32 [ 0, %bb.b ], [ %i.be, %.critedge.thread.i.i.i.i ]
  store i32 %.sink.i.i.ph, ptr %i.b, align 4, !tbaa !9
  %i.bf = and i32 %4, 1
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load i32, ptr %1, align 4, !tbaa !9
  %i.bi = shl i32 %i.bh, 3                        ; 2 uses
  %i.bj = icmp ugt i32 %i.q, %i.bi
  br i1 %i.bj, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %2, i64 %i.r, i1 false)
  %i.bk = sub nuw i32 %i.bi, %i.q
  %i.bl = getelementptr i8, ptr %0, i64 %i.r      ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = ashr i8 %i.bn, 7
  %i.bp = zext i32 %i.bk to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 %i.bo, i64 %i.bp, i1 false)
  %i.bq = load i32, ptr %1, align 4, !tbaa !9
  %i.br = shl i32 %i.bq, 3                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = zext i32 %i.br to i64                   ; 5 uses
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !10  ; 3 uses
  %i.bx = ashr i8 %i.bw, 7                        ; 3 uses
  %i.by = icmp eq i8 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.i.i.i94.preheader, label %.critedge.thread.i.i.i.i88

.lr.ph.i.i.i94.preheader:                         ; preds = %bb.h
  %i.bz = add nsw i64 %i.bt, -1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i94.preheader, %.lr.ph.i.i.i94
  %i.ca = phi i64 [ %i.bz, %.lr.ph.i.i.i94.preheader ], [ %i.cf, %.lr.ph.i.i.i94 ] ; 4 uses
  %.sroa.10.029.i4.i.i.i95224 = phi i64 [ %i.bt, %.lr.ph.i.i.i94.preheader ], [ %i.ca, %.lr.ph.i.i.i94 ]
  %i.cb = getelementptr i8, ptr %0, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10  ; 2 uses
  %i.ce = icmp eq i8 %i.cd, %i.bw
  br i1 %i.ce, label %.lr.ph.i.i.i94, label %.critedge.i.loopexit.i.i.i96, !llvm.loop !0

.lr.ph.i.i.i94:                                   ; preds = %bb.i
  %i.cf = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.critedge.thread.i.i.i.i88, label %bb.i, !llvm.loop !0

.critedge.i.loopexit.i.i.i96:                     ; preds = %bb.i
  %.pre.i.i.i97 = ashr i8 %i.cd, 7
  br label %.critedge.thread.i.i.i.i88

.critedge.thread.i.i.i.i88:                       ; preds = %.lr.ph.i.i.i94, %.critedge.i.loopexit.i.i.i96, %bb.h
  %.sroa.10.028.i.i.i.i89 = phi i64 [ %i.bt, %bb.h ], [ %i.ca, %.critedge.i.loopexit.i.i.i96 ], [ 0, %.lr.ph.i.i.i94 ]
  %.sroa.5.026.i.i.i.i90 = phi i64 [ %i.bt, %bb.h ], [ %.sroa.10.029.i4.i.i.i95224, %.critedge.i.loopexit.i.i.i96 ], [ 1, %.lr.ph.i.i.i94 ]
  %i.ch = phi i8 [ %i.bx, %bb.h ], [ %.pre.i.i.i97, %.critedge.i.loopexit.i.i.i96 ], [ 0, %.lr.ph.i.i.i94 ]
  %i.ci = icmp eq i8 %i.ch, %i.bx
  %.sroa.3.0.copyload4.i.i.i.i91 = select i1 %i.ci, i64 %.sroa.10.028.i.i.i.i89, i64 %.sroa.5.026.i.i.i.i90
  %i.cj = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i.i91 to i32
  %i.ck = add nuw i32 %i.cj, 7
  %i.cl = lshr i32 %i.ck, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread

_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98: ; preds = %bb.e
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread: ; preds = %bb.g, %.critedge.thread.i.i.i.i88, %bb.f, %bb.d
  %storemerge = phi i32 [ 0, %bb.d ], [ 0, %bb.g ], [ %i.cl, %.critedge.thread.i.i.i.i88 ], [ 0, %bb.f ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !9
  %.046158 = lshr i32 %4, 1                       ; 2 uses
  %.not52159 = icmp eq i32 %.046158, 0
  br i1 %.not52159, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, %bb.s
  %.046169 = phi i32 [ %.046, %bb.s ], [ %.046158, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 2 uses
  %.046.in168 = phi i32 [ %.046169, %bb.s ], [ %4, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ]
  %.sroa.0127.0166 = phi ptr [ %.sroa.0127.1, %bb.s ], [ %9, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 5 uses
  %.sroa.10.0165 = phi i32 [ %.sroa.10.1, %bb.s ], [ 1024, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 4 uses
  %.sroa.0135.0164 = phi ptr [ %.sroa.0132.0160, %bb.s ], [ %7, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 3 uses
  %.sroa.0131.0163 = phi ptr [ %.sroa.0131.1, %bb.s ], [ %5, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 5 uses
  %.sroa.11.0162 = phi i32 [ %.sroa.11.1, %bb.s ], [ %i.p, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 2 uses
  %.sroa.0132.0160 = phi ptr [ %.sroa.0135.0164, %bb.s ], [ %8, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ] ; 5 uses
  %i.cm = getelementptr i8, ptr %.sroa.0132.0160, i64 8 ; 3 uses
  %.val70.val = load ptr, ptr %i.cm, align 8, !tbaa !52 ; 2 uses
  store i32 1024, ptr %.val70.val, align 4, !tbaa !9
  %.sroa.015.0.copyload = load ptr, ptr %.sroa.0132.0160, align 8, !tbaa !112
  %.val78.val = load ptr, ptr %.sroa.0135.0164, align 8, !tbaa !51 ; 2 uses
  %i.cn = getelementptr i8, ptr %.sroa.0135.0164, i64 8
  %.val78.val79 = load ptr, ptr %i.cn, align 8, !tbaa !52
  %.val78.val79.val = load i32, ptr %.val78.val79, align 4, !tbaa !9 ; 2 uses
  %i.co = call noundef i32 @_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %.sroa.015.0.copyload, ptr nonnull %.val70.val, ptr %.val78.val, i32 %.val78.val79.val, ptr %.val78.val, i32 %.val78.val79.val) ; 2 uses
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.j, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.loopexit.split.loop.exit, !prof !55

bb.j:                                             ; preds = %.lr.ph
  %i.cp = and i32 %.046.in168, 2
  %.not55 = icmp eq i32 %i.cp, 0
  br i1 %.not55, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr i8, ptr %.sroa.0127.0166, i64 8 ; 3 uses
  %.val68.val = load ptr, ptr %i.cq, align 8, !tbaa !52
  store i32 %.sroa.10.0165, ptr %.val68.val, align 4, !tbaa !9
  %.val76.val = load ptr, ptr %.sroa.0131.0163, align 8, !tbaa !51
  %i.cr = getelementptr i8, ptr %.sroa.0131.0163, i64 8 ; 2 uses
  %.val76.val81 = load ptr, ptr %i.cr, align 8, !tbaa !52
  %.val76.val81.val = load i32, ptr %.val76.val81, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %.not.i.i.i = icmp eq i32 %.val76.val81.val, 0
  br i1 %.not.i.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit: ; preds = %bb.k
  %i.cs = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.val76.val, ptr noundef nonnull %i.a, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.sroa.07.0.copyload = load ptr, ptr %.sroa.0127.0166, align 8, !tbaa !112 ; 4 uses
  %.sroa.28.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !111 ; 3 uses
  %.val75.val = load ptr, ptr %.sroa.0132.0160, align 8, !tbaa !51
  %.val75.val82 = load ptr, ptr %i.cm, align 8, !tbaa !52
  %.val75.val82.val = load i32, ptr %.val75.val82, align 4, !tbaa !9
  %i.cu = shl i32 %.val75.val82.val, 3            ; 4 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load i32, ptr %.sroa.28.0.copyload, align 4, !tbaa !9
  %i.cx = shl i32 %i.cw, 3                        ; 2 uses
  %i.cy = icmp ugt i32 %i.cu, %i.cx
  br i1 %i.cy, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp eq i32 %i.cu, 0
  br i1 %i.cz, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.0.copyload, ptr readonly align 1 %.val75.val, i64 %i.cv, i1 false)
  %i.da = sub nuw i32 %i.cx, %i.cu
  %i.db = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.cv ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = ashr i8 %i.dd, 7
  %i.df = zext i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.db, i8 %i.de, i64 %i.df, i1 false)
  %i.dg = load i32, ptr %.sroa.28.0.copyload, align 4, !tbaa !9
  %i.dh = shl i32 %i.dg, 3                        ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = zext i32 %i.dh to i64                   ; 5 uses
  %i.dk = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10  ; 3 uses
  %i.dn = ashr i8 %i.dm, 7                        ; 3 uses
  %i.do = icmp eq i8 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.i.i.i114.preheader, label %.critedge.thread.i.i.i.i108

.lr.ph.i.i.i114.preheader:                        ; preds = %bb.o
  %i.dp = add nsw i64 %i.dj, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i114.preheader, %.lr.ph.i.i.i114
  %i.dq = phi i64 [ %i.dp, %.lr.ph.i.i.i114.preheader ], [ %i.dv, %.lr.ph.i.i.i114 ] ; 4 uses
  %.sroa.10.029.i4.i.i.i115225 = phi i64 [ %i.dj, %.lr.ph.i.i.i114.preheader ], [ %i.dq, %.lr.ph.i.i.i114 ]
  %i.dr = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !10  ; 2 uses
  %i.du = icmp eq i8 %i.dt, %i.dm
  br i1 %i.du, label %.lr.ph.i.i.i114, label %.critedge.i.loopexit.i.i.i116, !llvm.loop !0

.lr.ph.i.i.i114:                                  ; preds = %bb.p
  %i.dv = add nsw i64 %i.dq, -1                   ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.critedge.thread.i.i.i.i108, label %bb.p, !llvm.loop !0

.critedge.i.loopexit.i.i.i116:                    ; preds = %bb.p
  %.pre.i.i.i117 = ashr i8 %i.dt, 7
  br label %.critedge.thread.i.i.i.i108

.critedge.thread.i.i.i.i108:                      ; preds = %.lr.ph.i.i.i114, %.critedge.i.loopexit.i.i.i116, %bb.o
  %.sroa.10.028.i.i.i.i109 = phi i64 [ %i.dj, %bb.o ], [ %i.dq, %.critedge.i.loopexit.i.i.i116 ], [ 0, %.lr.ph.i.i.i114 ]
  %.sroa.5.026.i.i.i.i110 = phi i64 [ %i.dj, %bb.o ], [ %.sroa.10.029.i4.i.i.i115225, %.critedge.i.loopexit.i.i.i116 ], [ 1, %.lr.ph.i.i.i114 ]
  %i.dx = phi i8 [ %i.dn, %bb.o ], [ %.pre.i.i.i117, %.critedge.i.loopexit.i.i.i116 ], [ 0, %.lr.ph.i.i.i114 ]
  %i.dy = icmp eq i8 %i.dx, %i.dn
  %.sroa.3.0.copyload4.i.i.i.i111 = select i1 %i.dy, i64 %.sroa.10.028.i.i.i.i109, i64 %.sroa.5.026.i.i.i.i110
  %i.dz = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i.i111 to i32
  %i.ea = add nuw i32 %i.dz, 7
  %i.eb = lshr i32 %i.ea, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118

_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118: ; preds = %bb.l, %bb.m, %bb.n, %.critedge.thread.i.i.i.i108
  %.sink.i.i112 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.eb, %.critedge.thread.i.i.i.i108 ], [ 0, %bb.n ]
  %.1.i.i113 = phi i32 [ 1, %bb.l ], [ 0, %bb.m ], [ 0, %.critedge.thread.i.i.i.i108 ], [ 0, %bb.n ]
  store i32 %.sink.i.i112, ptr %.sroa.28.0.copyload, align 4, !tbaa !9
  br label %bb.r

bb.q:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.0127.0166, align 8, !tbaa !112
  %.sroa.24.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !111
  %.val74.val = load ptr, ptr %.sroa.0131.0163, align 8, !tbaa !51
  %.val74.val83 = load ptr, ptr %i.cr, align 8, !tbaa !52
  %.val74.val83.val = load i32, ptr %.val74.val83, align 4, !tbaa !9
  %.val73.val = load ptr, ptr %.sroa.0132.0160, align 8, !tbaa !51
  %.val73.val84 = load ptr, ptr %i.cm, align 8, !tbaa !52
  %.val73.val84.val = load i32, ptr %.val73.val84, align 4, !tbaa !9
  %i.ec = call noundef i32 @_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, ptr %.val74.val, i32 %.val74.val83.val, ptr %.val73.val, i32 %.val73.val84.val) ; 2 uses
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = icmp ugt i32 %.sroa.10.0165, 1023
  %or.cond.i123 = and i1 %i.ee, %i.ed
  br i1 %or.cond.i123, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118
  %.047 = phi i32 [ %.1.i.i113, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118 ], [ %i.ec, %bb.q ]
  %.not56 = icmp eq i32 %.047, 0
  br i1 %.not56, label %bb.s, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, !prof !54

bb.s:                                             ; preds = %bb.r, %bb.j
  %.sroa.11.1 = phi i32 [ %.sroa.11.0162, %bb.j ], [ %.sroa.10.0165, %bb.r ]
  %.sroa.0131.1 = phi ptr [ %.sroa.0131.0163, %bb.j ], [ %.sroa.0127.0166, %bb.r ] ; 4 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0165, %bb.j ], [ %.sroa.11.0162, %bb.r ] ; 3 uses
  %.sroa.0127.1 = phi ptr [ %.sroa.0127.0166, %bb.j ], [ %.sroa.0131.0163, %bb.r ] ; 4 uses
  %.046 = lshr i32 %.046169, 1                    ; 2 uses
  %.not52 = icmp eq i32 %.046, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.s
  %.not53 = icmp eq ptr %.sroa.0131.1, %5
  br i1 %.not53, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ef = getelementptr i8, ptr %.sroa.0127.1, i64 8 ; 2 uses
  %.val66.val = load ptr, ptr %i.ef, align 8, !tbaa !52
  store i32 %.sroa.10.1, ptr %.val66.val, align 4, !tbaa !9
  %.val72.val = load ptr, ptr %.sroa.0131.1, align 8, !tbaa !51 ; 2 uses
  %i.eg = getelementptr i8, ptr %.sroa.0131.1, i64 8
  %.val72.val85 = load ptr, ptr %i.eg, align 8, !tbaa !52
  %.val72.val85.val = load i32, ptr %.val72.val85, align 4, !tbaa !9 ; 6 uses
  %i.eh = icmp ult i32 %.sroa.10.1, %.val72.val85.val
  br i1 %i.eh, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = shl i32 %.val72.val85.val, 3
  %i.ej = load ptr, ptr %.sroa.0127.1, align 8, !tbaa !51
  %i.ek = zext i32 %i.ei to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ej, ptr readonly align 8 %.val72.val, i64 %i.ek, i1 false)
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !52, !nonnull !43, !align !53
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = sub i32 %i.em, %.val72.val85.val
  %i.eo = shl i32 %i.en, 3
  %i.ep = icmp eq i32 %.val72.val85.val, 0
  br i1 %i.ep, label %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = add i32 %.val72.val85.val, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val72.val, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !13
  %.neg.i.i.i = ashr i64 %i.et, 63
  %i.eu = trunc nsw i64 %.neg.i.i.i to i8
  br label %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i

_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i: ; preds = %bb.v, %bb.u
  %i.ev = phi i8 [ %i.eu, %bb.v ], [ 0, %bb.u ]
  %i.ew = load ptr, ptr %.sroa.0127.1, align 8, !tbaa !51
  %i.ex = zext i32 %.val72.val85.val to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = zext i32 %i.eo to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.ey, i8 %i.ev, i64 %i.ez, i1 false)
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.loopexit.split.loop.exit: ; preds = %.lr.ph
  %..i.le = shl nuw nsw i32 %i.co, 1
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %bb.r, %bb.q, %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.loopexit.split.loop.exit, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, %bb.t, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit, %._crit_edge
  %.0 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit ], [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98 ], [ 0, %._crit_edge ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i ], [ 1, %bb.t ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ], [ %..i.le, %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit.loopexit.split.loop.exit ], [ 1, %bb.r ], [ 2, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.fa = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.f
  br i1 %i.fb, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit
  call void @free(ptr noundef %i.fa) #16
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint19leftShiftResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %.thread56.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i: ; preds = %bb.a
  %i.c = add i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !115
  %.fr.i = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp slt i64 %.fr.i, 0
  %.lobit.i = lshr i64 %.fr.i, 63
  %i.h = trunc nuw nsw i64 %.lobit.i to i32       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  store i64 -65536, ptr %i.b, align 8, !tbaa !13, !noalias !115
  %i.i = icmp sgt i64 %.fr.i, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  %i.j = icmp eq i32 %3, 1
  br i1 %i.j, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i: ; preds = %bb.b
  %i.k = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !115
  %i.m = load i64, ptr %2, align 8, !tbaa !13, !noalias !115
  %.fr.i.i1738.i = freeze i64 %i.m                ; 2 uses
  %i.n = icmp slt i64 %.fr.i.i1738.i, 0
  br i1 %i.n, label %.thread52.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !115
  %i.o = icmp eq i32 %3, 1
  br i1 %i.o, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  %i.p = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %bb.d

.thread52.i:                                      ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  br label %bb.e

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i
  %i.r = load i64, ptr %2, align 8, !tbaa !13, !noalias !115 ; 2 uses
  br i1 %i.g, label %bb.e, label %.thread56.i

bb.e:                                             ; preds = %bb.d, %.thread52.i
  %.pn.i = phi i64 [ %.fr.i.i1738.i, %.thread52.i ], [ %i.r, %bb.d ]
  %i.s = sub nsw i64 0, %.pn.i
  br label %.thread56.i

.thread56.i:                                      ; preds = %bb.a, %bb.e, %bb.d
  %i.t = phi i32 [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ 0, %bb.a ]
  %i.u = phi i64 [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ 0, %bb.a ]
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 63
  %i.x = lshr i32 %i.w, 6
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, %.thread56.i
  %.sink63.i = phi i32 [ %i.t, %.thread56.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ]
  %.sink.i = phi i32 [ %i.x, %.thread56.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ]
  %.sink63.i.fr = freeze i32 %.sink63.i
  %i.y = icmp eq i32 %.sink63.i.fr, 0
  %spec.select = select i1 %i.y, i32 %.sink.i, i32 0
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i
  %i.z = phi i32 [ 0, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ], [ %spec.select, %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit ], [ 0, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i ]
  %i.aa = add i32 %i.z, %1
  ret i32 %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint26signedRightShiftResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %.thread56.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i: ; preds = %bb.a
  %i.c = add i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !118
  %.fr.i = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp slt i64 %.fr.i, 0
  %.lobit.i = lshr i64 %.fr.i, 63
  %i.h = trunc nuw nsw i64 %.lobit.i to i32       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !118
  store i64 -65536, ptr %i.b, align 8, !tbaa !13, !noalias !118
  %i.i = icmp sgt i64 %.fr.i, -1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  %i.j = icmp eq i32 %3, 1
  br i1 %i.j, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i: ; preds = %bb.b
  %i.k = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !118
  %i.m = load i64, ptr %2, align 8, !tbaa !13, !noalias !118
  %.fr.i.i1738.i = freeze i64 %i.m                ; 2 uses
  %i.n = icmp slt i64 %.fr.i.i1738.i, 0
  br i1 %i.n, label %.thread52.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !118
  %i.o = icmp eq i32 %3, 1
  br i1 %i.o, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  %i.p = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %bb.d

.thread52.i:                                      ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  br label %bb.e

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i
  %i.r = load i64, ptr %2, align 8, !tbaa !13, !noalias !118 ; 2 uses
  br i1 %i.g, label %bb.e, label %.thread56.i

bb.e:                                             ; preds = %bb.d, %.thread52.i
  %.pn.i = phi i64 [ %.fr.i.i1738.i, %.thread52.i ], [ %i.r, %bb.d ]
  %i.s = sub nsw i64 0, %.pn.i
  br label %.thread56.i

.thread56.i:                                      ; preds = %bb.a, %bb.e, %bb.d
  %i.t = phi i32 [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ 0, %bb.a ]
  %i.u = phi i64 [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ 0, %bb.a ]
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 63
  %i.x = lshr i32 %i.w, 6
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, %.thread56.i
  %.sink63.i = phi i32 [ %i.t, %.thread56.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ], [ %i.h, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ]
  %.sink.i = phi i32 [ %i.x, %.thread56.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ]
end_hunk_0
