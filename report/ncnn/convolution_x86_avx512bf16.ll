inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
bb.ad:                                            ; preds = %bb.ab
  %i.fd = shl nsw i32 %i.a, 2
  %i.fe = lshr i32 %3, 1
  %i.ff = and i32 %i.fe, 1
  %i.fg = and i32 %3, 1
  %i.fh = add nuw nsw i32 %i.fg, 1
  %i.fi = add nuw nsw i32 %i.fh, %i.ff
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.fd, i32 noundef %2, i32 noundef %i.fi, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.ae:                                            ; preds = %bb.u
  %i.fj = icmp sgt i32 %3, 1
  %i.fk = icmp sgt i32 %2, 15                     ; 2 uses
  br i1 %i.fj, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  br i1 %i.fk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fl = shl nsw i32 %i.a, 5
  %i.fm = lshr i32 %2, 4
  %i.fn = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.fo = shufflevector <4 x i32> %i.fn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fp = lshr <4 x i32> %i.fo, <i32 0, i32 3, i32 2, i32 1>
  %i.fq = and <4 x i32> %i.fp, splat (i32 1)
  %i.fr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fq)
  %op.rdx445 = add nuw nsw i32 %i.fr, %i.fm
  %i.fs = and i32 %3, 1
  %i.ft = add nuw nsw i32 %i.fs, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.fl, i32 noundef %op.rdx445, i32 noundef %i.ft, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.ah:                                            ; preds = %bb.af
  %i.fu = icmp sgt i32 %2, 7
  br i1 %i.fu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = shl nsw i32 %i.a, 4
  %i.fw = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %2, i64 0
  %i.fx = shufflevector <4 x i32> %i.fw, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fy = lshr <4 x i32> %i.fx, <i32 0, i32 2, i32 1, i32 0>
  %i.fz = and <4 x i32> %i.fy, splat (i32 1)
  %i.ga = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fz)
  %i.gb = and i32 %3, 1
  %i.gc = add nuw nsw i32 %i.gb, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.fv, i32 noundef %i.ga, i32 noundef %i.gc, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.aj:                                            ; preds = %bb.ah
  %i.gd = icmp sgt i32 %2, 3
  br i1 %i.gd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ge = shl nsw i32 %i.a, 3
  %i.gf = lshr i32 %2, 1
  %i.gg = and i32 %i.gf, 1
  %i.gh = and i32 %2, 1
  %i.gi = add nuw nsw i32 %i.gh, 1
  %i.gj = add nuw nsw i32 %i.gi, %i.gg
  %i.gk = and i32 %3, 1
  %i.gl = add nuw nsw i32 %i.gk, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.ge, i32 noundef %i.gj, i32 noundef %i.gl, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.al:                                            ; preds = %bb.aj
  %i.gm = icmp sgt i32 %2, 1
  br i1 %i.gm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gn = shl nsw i32 %i.a, 2
  %i.go = and i32 %2, 1
  %i.gp = add nuw nsw i32 %i.go, 1
  %i.gq = and i32 %3, 1
  %i.gr = add nuw nsw i32 %i.gq, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.gn, i32 noundef %i.gp, i32 noundef %i.gr, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.an:                                            ; preds = %bb.al
  %i.gs = shl nsw i32 %i.a, 1
  %i.gt = and i32 %3, 1
  %i.gu = add nuw nsw i32 %i.gt, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.gs, i32 noundef %2, i32 noundef %i.gu, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.ao:                                            ; preds = %bb.ae
  br i1 %i.fk, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gv = shl nsw i32 %i.a, 4
  %i.gw = lshr i32 %2, 4
  %i.gx = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.gy = shufflevector <4 x i32> %i.gx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gz = lshr <4 x i32> %i.gy, <i32 0, i32 3, i32 2, i32 1>
  %i.ha = and <4 x i32> %i.gz, splat (i32 1)
  %i.hb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ha)
  %op.rdx446 = add nuw nsw i32 %i.hb, %i.gw
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.gv, i32 noundef %op.rdx446, i32 noundef %3, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.aq:                                            ; preds = %bb.ao
  %i.hc = icmp sgt i32 %2, 7
  br i1 %i.hc, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hd = shl nsw i32 %i.a, 3
  %i.he = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %2, i64 0
  %i.hf = shufflevector <4 x i32> %i.he, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hg = lshr <4 x i32> %i.hf, <i32 0, i32 2, i32 1, i32 0>
  %i.hh = and <4 x i32> %i.hg, splat (i32 1)
  %i.hi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hh)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.hd, i32 noundef %i.hi, i32 noundef %3, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.as:                                            ; preds = %bb.aq
  %i.hj = icmp sgt i32 %2, 3
  br i1 %i.hj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hk = shl nsw i32 %i.a, 2
  %i.hl = lshr i32 %2, 1
  %i.hm = and i32 %i.hl, 1
  %i.hn = and i32 %2, 1
  %i.ho = add nuw nsw i32 %i.hn, 1
  %i.hp = add nuw nsw i32 %i.ho, %i.hm
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.hk, i32 noundef %i.hp, i32 noundef %3, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.au:                                            ; preds = %bb.as
  %i.hq = icmp sgt i32 %2, 1
  br i1 %i.hq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hr = shl nsw i32 %i.a, 1
  %i.hs = and i32 %2, 1
  %i.ht = add nuw nsw i32 %i.hs, 1
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.hr, i32 noundef %i.ht, i32 noundef %3, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

bb.aw:                                            ; preds = %bb.au
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.a, i32 noundef %2, i32 noundef %3, i64 noundef 2, i32 noundef 1, ptr noundef null)
  br label %.preheader1584.i

_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i:                ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.c
  %i.hu = mul i32 %i.a, %2                        ; 17 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hx = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.hy = shufflevector <16 x i32> %i.hx, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.hz = mul <16 x i32> %i.hy, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 17 uses
  %i.ia = icmp sgt i32 %i.a, 0                    ; 4 uses
  %i.ib = shl i32 %i.a, 4
  %i.ic = sext i32 %i.ib to i64                   ; 17 uses
  %i.id = insertelement <16 x i32> poison, i32 %2, i64 0
  %i.ie = shufflevector <16 x i32> %i.id, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.if = mul <16 x i32> %i.hz, %i.ie             ; 31 uses
  %i.ig = sext i32 %i.a to i64                    ; 19 uses
  %i.ih = shl i32 %i.a, 3
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = shl i32 %i.a, 2
  %i.ik = sext i32 %i.ij to i64
  %i.il = shl i32 %i.a, 1
  %i.im = sext i32 %i.il to i64
  %i.in = icmp slt i32 %i.a, 1
  %i.io = add i32 %2, -16                         ; 2 uses
  %i.ip = lshr i32 %i.io, 2
  %i.iq = and i32 %i.ip, 1073741820
  %narrow.i = add nuw nsw i32 %i.iq, 4
  %i.ir = zext nneg i32 %narrow.i to i64
  %i.is = mul nsw i64 %i.ic, %i.ir
  %i.it = shl i32 %i.hu, 4
  %i.iu = and i32 %i.io, -16
  %i.iv = add i32 %i.iu, 16                       ; 4 uses
  %i.iw = add i32 %2, -8
  %i.ix = zext nneg i32 %3 to i64
  %i.iy = or disjoint i32 %i.iv, 7
  %i.iz = icmp slt i32 %i.iy, %2
  %wide.trip.count.i = zext i32 %i.a to i64       ; 9 uses
  %i.ja = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.jb = icmp eq i64 %i.ja, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod524 = trunc i32 %i.a to i1
  %xtraiter526 = and i64 %wide.trip.count.i, 1
  %i.jc = icmp eq i64 %i.ja, 0
  %unroll_iter530 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  %lcmp.mod529 = trunc i32 %i.a to i1
  %xtraiter533 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.jd = icmp ult i64 %i.ja, 3
  %unroll_iter537 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0
  %lcmp.mod536 = icmp ne i64 %xtraiter533, 0
  br label %_ZN4ncnn3MatD2Ev.exit1304.i

.preheader1584.loopexit.i:                        ; preds = %._crit_edge1671.split.i
  %i.je = trunc nuw nsw i64 %indvars.iv.next2204.i to i32
  br label %.preheader1584.i

.preheader1584.i:                                 ; preds = %.preheader1584.loopexit.i, %bb.aw, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ad, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m
  %.01092.lcssa.i = phi i32 [ %i.je, %.preheader1584.loopexit.i ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %bb.ai ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ak ], [ 0, %bb.ag ], [ 0, %bb.ar ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.at ], [ 0, %bb.ap ], [ 0, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.y ] ; 4 uses
  %i.jf = or disjoint i32 %.01092.lcssa.i, 7      ; 2 uses
  %i.jg = icmp slt i32 %i.jf, %3
  br i1 %i.jg, label %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i, label %.preheader1575.i

_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i:                ; preds = %.preheader1584.i
  %i.jh = mul i32 %i.a, %2                        ; 10 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jk = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.jl = shufflevector <8 x i32> %i.jk, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jm = mul <8 x i32> %i.jl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.jn = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.jo = shufflevector <16 x i32> %i.jn, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.jp = mul <16 x i32> %i.jo, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 8 uses
  %i.jq = icmp sgt i32 %2, 15
  %i.jr = icmp sgt i32 %i.a, 0                    ; 4 uses
  %i.js = shl i32 %i.a, 4
  %i.jt = sext i32 %i.js to i64                   ; 9 uses
  %i.ju = shl i32 %i.a, 3
  %i.jv = sext i32 %i.ju to i64                   ; 9 uses
  %i.jw = insertelement <8 x i32> poison, i32 %2, i64 0
  %i.jx = shufflevector <8 x i32> %i.jw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jy = mul <8 x i32> %i.jm, %i.jx              ; 23 uses
  %i.jz = sext i32 %i.a to i64                    ; 12 uses
  %i.ka = shl i32 %i.a, 2
  %i.kb = sext i32 %i.ka to i64
  %i.kc = shl i32 %i.a, 1
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp slt i32 %i.a, 1
  %i.kf = add i32 %2, -16                         ; 2 uses
  %i.kg = lshr i32 %i.kf, 2
  %i.kh = and i32 %i.kg, 1073741820
  %narrow2440.i.a = add nuw nsw i32 %i.kh, 4
  %i.ki = zext nneg i32 %narrow2440.i.a to i64
  %i.kj = mul nsw i64 %i.jt, %i.ki
  %i.kk = mul i32 %i.jh, %.01092.lcssa.i
  %i.kl = shl i32 %i.jh, 3
  %i.km = and i32 %i.kf, -16
  %i.kn = add i32 %i.km, 16                       ; 4 uses
  %i.ko = add i32 %2, -8
  %i.kp = zext nneg i32 %.01092.lcssa.i to i64
  %i.kq = sext i32 %3 to i64
  %i.kr = or disjoint i32 %i.kn, 7
  %i.ks = icmp slt i32 %i.kr, %2
  %wide.trip.count2235.i = zext i32 %i.a to i64   ; 9 uses
  %i.kt = add nsw i64 %wide.trip.count2235.i, -1  ; 3 uses
  %xtraiter540 = and i64 %wide.trip.count2235.i, 1
  %i.ku = icmp eq i64 %i.kt, 0
  %unroll_iter545 = and i64 %wide.trip.count2235.i, 2147483646
  %lcmp.mod542.not = icmp eq i64 %xtraiter540, 0
  %lcmp.mod544 = trunc i32 %i.a to i1
  %xtraiter548 = and i64 %wide.trip.count2235.i, 1
  %i.kv = icmp eq i64 %i.kt, 0
  %unroll_iter553 = and i64 %wide.trip.count2235.i, 2147483646
  %lcmp.mod550.not = icmp eq i64 %xtraiter548, 0
  %lcmp.mod552 = trunc i32 %i.a to i1
  %xtraiter556 = and i64 %wide.trip.count2235.i, 3 ; 3 uses
  %i.kw = icmp ult i64 %i.kt, 3
  %unroll_iter561 = and i64 %wide.trip.count2235.i, 2147483644
  %lcmp.mod558.not = icmp eq i64 %xtraiter556, 0
  %lcmp.mod560 = icmp ne i64 %xtraiter556, 0
  br label %_ZN4ncnn3MatD2Ev.exit1303.i

_ZN4ncnn3MatD2Ev.exit1304.i:                      ; preds = %._crit_edge1671.split.i, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i
  %indvars.iv2203.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %indvars.iv.next2204.i, %._crit_edge1671.split.i ] ; 3 uses
  %indvars.iv.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1304.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge1671.split.i ] ; 2 uses
  %i.kx = sext i32 %indvars.iv.i to i64
  %i.ky = shl nsw i64 %i.kx, 2
  %i.kz = load ptr, ptr %0, align 8, !tbaa !9     ; 17 uses
  %i.la = trunc i64 %indvars.iv2203.i to i32      ; 16 uses
  %i.lb = mul i32 %i.hu, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.lc ; 2 uses
  %i.le = lshr exact i64 %indvars.iv2203.i, 4
  %i.lf = load ptr, ptr %1, align 8, !tbaa !9, !noalias !15
  %i.lg = load i64, ptr %i.hv, align 8, !tbaa !18, !noalias !15
  %i.lh = mul i64 %i.lg, %i.le
  %i.li = load i64, ptr %i.hw, align 8, !tbaa !19, !noalias !15
  %i.lj = mul i64 %i.lh, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lj ; 4 uses
  br i1 %i.c, label %.preheader1589.lr.ph.i, label %._crit_edge1613.i

.preheader1589.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1304.i
  br i1 %i.ia, label %.preheader1589.us.preheader.i, label %._crit_edge1613.thread.i

.preheader1589.us.preheader.i:                    ; preds = %.preheader1589.lr.ph.i
  %i.ll = or disjoint i32 %i.la, 1
  %i.lm = mul i32 %i.ll, %i.hu
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.ln
  %i.lp = or disjoint i32 %i.la, 2
  %i.lq = mul i32 %i.lp, %i.hu
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.lr
  %i.lt = or disjoint i32 %i.la, 3
  %i.lu = mul i32 %i.lt, %i.hu
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.lv
  %i.lx = or disjoint i32 %i.la, 4
  %i.ly = mul i32 %i.lx, %i.hu
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.lz
  %i.mb = or disjoint i32 %i.la, 5
  %i.mc = mul i32 %i.mb, %i.hu
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.md
  %i.mf = or disjoint i32 %i.la, 6
  %i.mg = mul i32 %i.mf, %i.hu
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mh
  %i.mj = or disjoint i32 %i.la, 7
  %i.mk = mul i32 %i.mj, %i.hu
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.ml
  %i.mn = or disjoint i32 %i.la, 8
  %i.mo = mul i32 %i.mn, %i.hu
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mp
  %i.mr = or disjoint i32 %i.la, 9
  %i.ms = mul i32 %i.mr, %i.hu
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mt
  %i.mv = or disjoint i32 %i.la, 10
  %i.mw = mul i32 %i.mv, %i.hu
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.mx
  %i.mz = or disjoint i32 %i.la, 11
  %i.na = mul i32 %i.mz, %i.hu
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.nb
  %i.nd = or disjoint i32 %i.la, 12
  %i.ne = mul i32 %i.nd, %i.hu
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.nf
  %i.nh = or disjoint i32 %i.la, 13
  %i.ni = mul i32 %i.nh, %i.hu
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.nj
  %i.nl = or disjoint i32 %i.la, 14
  %i.nm = mul i32 %i.nl, %i.hu
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.nn
  %i.np = or disjoint i32 %i.la, 15
  %i.nq = mul i32 %i.np, %i.hu
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.nr
  br label %.preheader1589.us.i

.preheader1589.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1589.us.preheader.i
  %.010941612.us.i = phi ptr [ %i.sr, %._crit_edge.us.i ], [ %i.ld, %.preheader1589.us.preheader.i ] ; 2 uses
  %.010991611.us.i = phi ptr [ %i.ss, %._crit_edge.us.i ], [ %i.lo, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011151610.us.i = phi ptr [ %i.st, %._crit_edge.us.i ], [ %i.ls, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011161609.us.i = phi ptr [ %i.su, %._crit_edge.us.i ], [ %i.lw, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011221608.us.i = phi ptr [ %i.sv, %._crit_edge.us.i ], [ %i.ma, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011231607.us.i = phi ptr [ %i.sw, %._crit_edge.us.i ], [ %i.me, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011251606.us.i = phi ptr [ %i.sx, %._crit_edge.us.i ], [ %i.mi, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011261605.us.i = phi ptr [ %i.sy, %._crit_edge.us.i ], [ %i.mm, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011281604.us.i = phi ptr [ %i.sz, %._crit_edge.us.i ], [ %i.mq, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011291603.us.i = phi ptr [ %i.ta, %._crit_edge.us.i ], [ %i.mu, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011551602.us.i = phi ptr [ %i.tb, %._crit_edge.us.i ], [ %i.my, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011601601.us.i = phi ptr [ %i.tc, %._crit_edge.us.i ], [ %i.nc, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011611600.us.i = phi ptr [ %i.td, %._crit_edge.us.i ], [ %i.ng, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011621599.us.i = phi ptr [ %i.te, %._crit_edge.us.i ], [ %i.nk, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011631598.us.i = phi ptr [ %i.tf, %._crit_edge.us.i ], [ %i.no, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011641597.us.i = phi ptr [ %i.tg, %._crit_edge.us.i ], [ %i.ns, %.preheader1589.us.preheader.i ] ; 2 uses
  %.011651596.us.i = phi ptr [ %i.sq, %._crit_edge.us.i ], [ %i.lk, %.preheader1589.us.preheader.i ]
  %.011761595.us.i = phi i32 [ %i.th, %._crit_edge.us.i ], [ 0, %.preheader1589.us.preheader.i ]
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.preheader1589.us.i
  %indvars.iv2173.i = phi i64 [ 0, %.preheader1589.us.i ], [ %indvars.iv.next2174.i, %bb.ax ] ; 17 uses
  %.111661594.us.i = phi ptr [ %.011651596.us.i, %.preheader1589.us.i ], [ %i.sq, %bb.ax ] ; 17 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.010941612.us.i, i64 %indvars.iv2173.i
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.010991611.us.i, i64 %indvars.iv2173.i
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.011151610.us.i, i64 %indvars.iv2173.i
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.011161609.us.i, i64 %indvars.iv2173.i
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.011221608.us.i, i64 %indvars.iv2173.i
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.011231607.us.i, i64 %indvars.iv2173.i
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.011251606.us.i, i64 %indvars.iv2173.i
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.011261605.us.i, i64 %indvars.iv2173.i
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.011281604.us.i, i64 %indvars.iv2173.i
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.011291603.us.i, i64 %indvars.iv2173.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.011551602.us.i, i64 %indvars.iv2173.i
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.011601601.us.i, i64 %indvars.iv2173.i
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.011611600.us.i, i64 %indvars.iv2173.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.011621599.us.i, i64 %indvars.iv2173.i
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.011631598.us.i, i64 %indvars.iv2173.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.011641597.us.i, i64 %indvars.iv2173.i
  %i.oj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nt, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ok = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nu, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ol = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nv, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.om = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nw, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.on = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nx, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ny, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.op = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.nz, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oa, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.or = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ob, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.os = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oc, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ot = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.od, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ou = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oe, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ov = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.of, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ow = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.og, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ox = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oh, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oi, <16 x i32> %i.hz, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oz = shufflevector <16 x float> %i.oj, <16 x float> %i.ok, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pa = shufflevector <16 x float> %i.oj, <16 x float> %i.ok, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pb = shufflevector <16 x float> %i.ol, <16 x float> %i.om, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pc = shufflevector <16 x float> %i.ol, <16 x float> %i.om, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pd = shufflevector <16 x float> %i.on, <16 x float> %i.oo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pe = shufflevector <16 x float> %i.on, <16 x float> %i.oo, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pf = shufflevector <16 x float> %i.op, <16 x float> %i.oq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pg = shufflevector <16 x float> %i.op, <16 x float> %i.oq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ph = shufflevector <16 x float> %i.or, <16 x float> %i.os, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pi = shufflevector <16 x float> %i.or, <16 x float> %i.os, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pj = shufflevector <16 x float> %i.ot, <16 x float> %i.ou, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pk = shufflevector <16 x float> %i.ot, <16 x float> %i.ou, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pl = shufflevector <16 x float> %i.ov, <16 x float> %i.ow, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pm = shufflevector <16 x float> %i.ov, <16 x float> %i.ow, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pn = shufflevector <16 x float> %i.ox, <16 x float> %i.oy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.po = shufflevector <16 x float> %i.ox, <16 x float> %i.oy, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pp = shufflevector <16 x float> %i.oz, <16 x float> %i.pb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.oz, <16 x float> %i.pb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.pa, <16 x float> %i.pc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.pa, <16 x float> %i.pc, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.pd, <16 x float> %i.pf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.pd, <16 x float> %i.pf, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.pe, <16 x float> %i.pg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.pe, <16 x float> %i.pg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.px = shufflevector <16 x float> %i.ph, <16 x float> %i.pj, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.py = shufflevector <16 x float> %i.ph, <16 x float> %i.pj, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pl, <16 x float> %i.pn, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pl, <16 x float> %i.pn, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pp, <16 x float> %i.pt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.px, <16 x float> %i.qb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.pq, <16 x float> %i.pu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pr, <16 x float> %i.pv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.ps, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.pp, <16 x float> %i.pt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 4 ; 2 uses
  %i.xt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xs, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xt)
  store <16 x bfloat> %i.xu, ptr %i.xq, align 1, !tbaa !20
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.ig
  %i.xw = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 96
  %i.xx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xv, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.xy = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.xx)
  store <16 x bfloat> %i.xy, ptr %i.xw, align 1, !tbaa !20
  %i.xz = getelementptr inbounds nuw i8, ptr %.911741655.us.i, i64 128 ; 3 uses
  %indvars.iv.next2193.i.1 = add nuw nsw i64 %indvars.iv2192.i, 2 ; 2 uses
  %niter531.next.1 = add i64 %niter531, 2         ; 2 uses
  %niter531.ncmp.1 = icmp eq i64 %niter531.next.1, %unroll_iter530
  br i1 %niter531.ncmp.1, label %._crit_edge.us1662.i.unr-lcssa, label %.preheader1586.us.i.new, !llvm.loop !28

._crit_edge.us1662.i.unr-lcssa:                   ; preds = %.preheader1586.us.i.new
  br i1 %lcmp.mod527.not, label %._crit_edge.us1662.i, label %.epil.preheader525

.epil.preheader525:                               ; preds = %._crit_edge.us1662.i.unr-lcssa, %.preheader1586.us.i
  %indvars.iv2192.i.epil.init = phi i64 [ 0, %.preheader1586.us.i ], [ %indvars.iv.next2193.i.1, %._crit_edge.us1662.i.unr-lcssa ]
  %.911741655.us.i.epil.init = phi ptr [ %.811731657.us.i, %.preheader1586.us.i ], [ %i.xz, %._crit_edge.us1662.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod529)
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %indvars.iv2192.i.epil.init ; 2 uses
  %i.yb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ya, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yb)
  store <16 x bfloat> %i.yc, ptr %.911741655.us.i.epil.init, align 1, !tbaa !20
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %i.ig
  %i.ye = getelementptr inbounds nuw i8, ptr %.911741655.us.i.epil.init, i64 32
  %i.yf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yd, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yg = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yf)
  store <16 x bfloat> %i.yg, ptr %i.ye, align 1, !tbaa !20
  %i.yh = getelementptr inbounds nuw i8, ptr %.911741655.us.i.epil.init, i64 64
  br label %._crit_edge.us1662.i

._crit_edge.us1662.i:                             ; preds = %._crit_edge.us1662.i.unr-lcssa, %.epil.preheader525
  %.lcssa519 = phi ptr [ %i.xz, %._crit_edge.us1662.i.unr-lcssa ], [ %i.yh, %.epil.preheader525 ] ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.310971658.us.i, i64 %i.im ; 2 uses
  %i.yj = add nuw nsw i32 %.311791656.us.i, 2     ; 3 uses
  %i.yk = or disjoint i32 %i.yj, 1
  %i.yl = icmp slt i32 %i.yk, %2
  br i1 %i.yl, label %.preheader1586.us.i, label %.preheader1590.i, !llvm.loop !29

.preheader1590.i:                                 ; preds = %._crit_edge.us1662.i, %.preheader1591.i
  %.31179.lcssa.i = phi i32 [ %.21178.lcssa.i, %.preheader1591.i ], [ %i.yj, %._crit_edge.us1662.i ] ; 2 uses
  %.81173.lcssa.i = phi ptr [ %.51170.lcssa.i, %.preheader1591.i ], [ %.lcssa519, %._crit_edge.us1662.i ]
  %.31097.lcssa.i = phi ptr [ %.21096.lcssa.i, %.preheader1591.i ], [ %i.yi, %._crit_edge.us1662.i ] ; 5 uses
  %i.ym = icmp sge i32 %.31179.lcssa.i, %2
  %brmerge.i = or i1 %i.in, %i.ym
  br i1 %brmerge.i, label %._crit_edge1671.split.i, label %.preheader1585.i

.preheader1585.i:                                 ; preds = %.preheader1590.i, %._crit_edge.i
  %.111670.i = phi ptr [ %.lcssa522, %._crit_edge.i ], [ %.81173.lcssa.i, %.preheader1590.i ] ; 2 uses
  %.411801669.i = phi i32 [ %i.yr, %._crit_edge.i ], [ %.31179.lcssa.i, %.preheader1590.i ]
  br i1 %i.jd, label %.epil.preheader532, label %.preheader1585.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1585.i.new
  br i1 %lcmp.mod534.not, label %._crit_edge.i, label %.epil.preheader532

.epil.preheader532:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1585.i
  %indvars.iv2197.i.epil.init = phi i64 [ 0, %.preheader1585.i ], [ %indvars.iv.next2198.i.3, %._crit_edge.i.unr-lcssa ]
  %.121668.i.epil.init = phi ptr [ %.111670.i, %.preheader1585.i ], [ %i.zk, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod536)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader532
  %indvars.iv2197.i.epil = phi i64 [ %indvars.iv2197.i.epil.init, %.epil.preheader532 ], [ %indvars.iv.next2198.i.epil, %bb.az ] ; 2 uses
  %.121668.i.epil = phi ptr [ %.121668.i.epil.init, %.epil.preheader532 ], [ %i.yq, %bb.az ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader532 ], [ %epil.iter.next, %bb.az ]
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2197.i.epil
  %i.yo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yn, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yo)
  store <16 x bfloat> %i.yp, ptr %.121668.i.epil, align 1, !tbaa !20
  %i.yq = getelementptr inbounds nuw i8, ptr %.121668.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2198.i.epil = add nuw nsw i64 %indvars.iv2197.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter533
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.az, !llvm.loop !30

._crit_edge.i:                                    ; preds = %bb.az, %._crit_edge.i.unr-lcssa
  %.lcssa522 = phi ptr [ %i.zk, %._crit_edge.i.unr-lcssa ], [ %i.yq, %bb.az ]
  %i.yr = add nuw nsw i32 %.411801669.i, 1        ; 2 uses
  %exitcond2202.not.i = icmp eq i32 %i.yr, %2
  br i1 %exitcond2202.not.i, label %._crit_edge1671.split.i, label %.preheader1585.i, !llvm.loop !32

.preheader1585.i.new:                             ; preds = %.preheader1585.i, %.preheader1585.i.new
  %indvars.iv2197.i = phi i64 [ %indvars.iv.next2198.i.3, %.preheader1585.i.new ], [ 0, %.preheader1585.i ] ; 5 uses
  %.121668.i = phi ptr [ %i.zk, %.preheader1585.i.new ], [ %.111670.i, %.preheader1585.i ] ; 5 uses
  %niter538 = phi i64 [ %niter538.next.3, %.preheader1585.i.new ], [ 0, %.preheader1585.i ]
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2197.i
  %i.yt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ys, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yt)
  store <16 x bfloat> %i.yu, ptr %.121668.i, align 1, !tbaa !20
  %i.yv = getelementptr inbounds nuw i8, ptr %.121668.i, i64 32
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2197.i
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.yy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yx, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.yz = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yy)
  store <16 x bfloat> %i.yz, ptr %i.yv, align 1, !tbaa !20
  %i.za = getelementptr inbounds nuw i8, ptr %.121668.i, i64 64
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2197.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zc, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.ze = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.zd)
  store <16 x bfloat> %i.ze, ptr %i.za, align 1, !tbaa !20
  %i.zf = getelementptr inbounds nuw i8, ptr %.121668.i, i64 96
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.31097.lcssa.i, i64 %indvars.iv2197.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 12
  %i.zi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zh, <16 x i32> %i.if, <16 x i1> splat (i1 true), i32 4)
  %i.zj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.zi)
  store <16 x bfloat> %i.zj, ptr %i.zf, align 1, !tbaa !20
  %i.zk = getelementptr inbounds nuw i8, ptr %.121668.i, i64 128 ; 3 uses
  %indvars.iv.next2198.i.3 = add nuw nsw i64 %indvars.iv2197.i, 4 ; 2 uses
  %niter538.next.3 = add i64 %niter538, 4         ; 2 uses
  %niter538.ncmp.3 = icmp eq i64 %niter538.next.3, %unroll_iter537
  br i1 %niter538.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader1585.i.new, !llvm.loop !33

._crit_edge1671.split.i:                          ; preds = %._crit_edge.i, %.preheader1590.i, %.preheader1586.lr.ph.i, %.preheader1587.lr.ph.i
  %indvars.iv.next2204.i = add nuw nsw i64 %indvars.iv2203.i, 16 ; 3 uses
  %i.zl = or disjoint i64 %indvars.iv.next2204.i, 15
  %i.zm = icmp samesign ult i64 %i.zl, %i.ix
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.it
  br i1 %i.zm, label %_ZN4ncnn3MatD2Ev.exit1304.i, label %.preheader1584.loopexit.i, !llvm.loop !34

.preheader1575.loopexit.i:                        ; preds = %._crit_edge1767.split.i
  %i.zn = trunc nuw nsw i64 %indvars.iv.next2267.i to i32
  br label %.preheader1575.i

.preheader1575.i:                                 ; preds = %.preheader1575.loopexit.i, %.preheader1584.i
  %.1.lcssa.i = phi i32 [ %.01092.lcssa.i, %.preheader1584.i ], [ %i.zn, %.preheader1575.loopexit.i ] ; 4 uses
  %i.zo = or disjoint i32 %.1.lcssa.i, 3          ; 2 uses
  %i.zp = icmp slt i32 %i.zo, %3
  br i1 %i.zp, label %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i, label %.preheader1566.i

_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i:                ; preds = %.preheader1575.i
  %i.zq = insertelement <2 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.zr = shufflevector <2 x i32> %i.zq, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.zs = or disjoint <4 x i32> %i.zr, <i32 0, i32 0, i32 0, i32 3>
  %i.zt = mul i32 %i.a, %2                        ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zw = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.zx = shufflevector <4 x i32> %i.zw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zy = mul <4 x i32> %i.zx, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.zz = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.aaa = shufflevector <8 x i32> %i.zz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aab = mul <8 x i32> %i.aaa, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aac = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.aad = shufflevector <16 x i32> %i.aac, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aae = mul <16 x i32> %i.aad, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aaf = icmp sgt i32 %2, 15
  %i.aag = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.aah = shl i32 %i.a, 4
  %i.aai = sext i32 %i.aah to i64                 ; 5 uses
  %i.aaj = shl i32 %i.a, 3
  %i.aak = sext i32 %i.aaj to i64                 ; 5 uses
  %i.aal = shl i32 %i.a, 2
  %i.aam = sext i32 %i.aal to i64                 ; 4 uses
  %i.aan = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.aao = shufflevector <4 x i32> %i.aan, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aap = mul <4 x i32> %i.zy, %i.aao            ; 11 uses
  %i.aaq = sext i32 %i.a to i64                   ; 3 uses
  %i.aar = shl i32 %i.a, 1
  %i.aas = sext i32 %i.aar to i64
  %i.aat = icmp slt i32 %i.a, 1
  %i.aau = add i32 %2, -16                        ; 2 uses
  %i.aav = lshr i32 %i.aau, 2
  %i.aaw = and i32 %i.aav, 1073741820
  %narrow2442.i.a = add nuw nsw i32 %i.aaw, 4
  %i.aax = zext nneg i32 %narrow2442.i.a to i64
  %i.aay = mul nsw i64 %i.aai, %i.aax
  %i.aaz = shl i32 %i.zt, 2
  %i.aba = add nuw <4 x i32> %i.zs, <i32 0, i32 1, i32 2, i32 0>
  %i.abb = insertelement <4 x i32> poison, i32 %i.zt, i64 0
  %i.abc = shufflevector <4 x i32> %i.abb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abd = mul <4 x i32> %i.abc, %i.aba
  %i.abe = and i32 %i.aau, -16
  %i.abf = add i32 %i.abe, 16                     ; 4 uses
  %i.abg = add i32 %2, -8
  %i.abh = zext nneg i32 %.1.lcssa.i to i64
  %i.abi = sext i32 %3 to i64
  %i.abj = or disjoint i32 %i.abf, 7
  %i.abk = icmp slt i32 %i.abj, %2
  %wide.trip.count2287.i = zext i32 %i.a to i64   ; 8 uses
  %i.abl = insertelement <4 x i32> poison, i32 %i.aaz, i64 0
  %i.abm = shufflevector <4 x i32> %i.abl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abn = add nsw i64 %wide.trip.count2287.i, -1 ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count2287.i, 1
  %i.abo = icmp eq i64 %i.abn, 0
  %unroll_iter569 = and i64 %wide.trip.count2287.i, 2147483646
  %lcmp.mod566.not = icmp eq i64 %xtraiter564, 0
  %lcmp.mod568 = trunc i32 %i.a to i1
  %xtraiter572 = and i64 %wide.trip.count2287.i, 3 ; 3 uses
  %i.abp = icmp ult i64 %i.abn, 3
  %unroll_iter577 = and i64 %wide.trip.count2287.i, 2147483644
  %lcmp.mod574.not = icmp eq i64 %xtraiter572, 0
  %lcmp.mod576 = icmp ne i64 %xtraiter572, 0
  br label %_ZN4ncnn3MatD2Ev.exit1302.i

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1767.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2266.i = phi i64 [ %i.kp, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2267.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2264.i = phi i32 [ %i.kk, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2208.i, %._crit_edge1767.split.i ] ; 2 uses
  %indvars.iv2207.i = phi i32 [ %i.jf, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %7, %._crit_edge1767.split.i ]
  %i.abq = sext i32 %indvars.iv2264.i to i64
  %i.abr = shl nsw i64 %i.abq, 2
  %i.abs = load ptr, ptr %0, align 8, !tbaa !9    ; 9 uses
  %i.abt = trunc i64 %indvars.iv2266.i to i32     ; 9 uses
  %i.abu = mul i32 %i.jh, %i.abt
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abv ; 2 uses
  %i.abx = add i32 %i.abt, 1
  %i.aby = mul i32 %i.abx, %i.jh
  %i.abz = sext i32 %i.aby to i64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.abz ; 2 uses
  %i.acb = add i32 %i.abt, 2
  %i.acc = mul i32 %i.acb, %i.jh
  %i.acd = sext i32 %i.acc to i64
  %i.ace = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acd ; 2 uses
  %i.acf = add i32 %i.abt, 3
  %i.acg = mul i32 %i.acf, %i.jh
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.ach ; 2 uses
  %i.acj = add i32 %i.abt, 4
  %i.ack = mul i32 %i.acj, %i.jh
  %i.acl = sext i32 %i.ack to i64
  %i.acm = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acl ; 2 uses
  %i.acn = add i32 %i.abt, 5
  %i.aco = mul i32 %i.acn, %i.jh
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acp ; 2 uses
  %i.acr = add i32 %i.abt, 6
  %i.acs = mul i32 %i.acr, %i.jh
  %i.act = sext i32 %i.acs to i64
  %i.acu = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.act ; 2 uses
  %i.acv = mul i32 %indvars.iv2207.i, %i.jh
  %i.acw = sext i32 %i.acv to i64
  %i.acx = getelementptr inbounds [4 x i8], ptr %i.abs, i64 %i.acw ; 2 uses
  %i.acy = lshr i32 %i.abt, 4
  %i.acz = lshr exact i32 %i.abt, 3
  %i.ada = and i32 %i.acz, 1
  %i.adb = add nuw nsw i32 %i.ada, %i.acy
  %i.adc = load ptr, ptr %1, align 8, !tbaa !9, !noalias !35
  %i.add = load i64, ptr %i.ji, align 8, !tbaa !18, !noalias !35
  %i.ade = zext nneg i32 %i.adb to i64
  %i.adf = mul i64 %i.add, %i.ade
  %i.adg = load i64, ptr %i.jj, align 8, !tbaa !19, !noalias !35
  %i.adh = mul i64 %i.adf, %i.adg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.adh ; 4 uses
  br i1 %i.jq, label %.preheader1580.lr.ph.i, label %.preheader1583.i

.preheader1580.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.jr, label %.preheader1580.us.i, label %.preheader1583.thread.i

.preheader1580.us.i:                              ; preds = %.preheader1580.lr.ph.i, %._crit_edge1676.us.i
  %.012311687.us.i = phi ptr [ %i.afv, %._crit_edge1676.us.i ], [ %i.abw, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012351686.us.i = phi ptr [ %i.afw, %._crit_edge1676.us.i ], [ %i.aca, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012371685.us.i = phi ptr [ %i.afx, %._crit_edge1676.us.i ], [ %i.ace, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012391684.us.i = phi ptr [ %i.afy, %._crit_edge1676.us.i ], [ %i.aci, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012411683.us.i = phi ptr [ %i.afz, %._crit_edge1676.us.i ], [ %i.acm, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012441682.us.i = phi ptr [ %i.aga, %._crit_edge1676.us.i ], [ %i.acq, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012461681.us.i = phi ptr [ %i.agb, %._crit_edge1676.us.i ], [ %i.acu, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012481680.us.i = phi ptr [ %i.agc, %._crit_edge1676.us.i ], [ %i.acx, %.preheader1580.lr.ph.i ] ; 2 uses
  %.012501679.us.i = phi ptr [ %i.afu, %._crit_edge1676.us.i ], [ %i.adi, %.preheader1580.lr.ph.i ]
  %.012621678.us.i = phi i32 [ %i.agd, %._crit_edge1676.us.i ], [ 0, %.preheader1580.lr.ph.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1580.us.i
  %indvars.iv2232.i = phi i64 [ 0, %.preheader1580.us.i ], [ %indvars.iv.next2233.i, %bb.ba ] ; 9 uses
  %.112511675.us.i = phi ptr [ %.012501679.us.i, %.preheader1580.us.i ], [ %i.afu, %bb.ba ] ; 9 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %indvars.iv2232.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %indvars.iv2232.i
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %indvars.iv2232.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %indvars.iv2232.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %indvars.iv2232.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %indvars.iv2232.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %indvars.iv2232.i
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %indvars.iv2232.i
  %i.adr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adj, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ads = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adk, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adl, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adm, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adn, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ado, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adp, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ady = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adq, <16 x i32> %i.jp, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adr, <16 x float> %i.ads, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.adr, <16 x float> %i.ads, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.adt, <16 x float> %i.adu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adt, <16 x float> %i.adu, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adv, <16 x float> %i.adw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adv, <16 x float> %i.adw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adx, <16 x float> %i.ady, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.adx, <16 x float> %i.ady, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.aea, <16 x float> %i.aec, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.aea, <16 x float> %i.aec, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aee, <16 x float> %i.aeg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aeo = shufflevector <16 x float> %i.aee, <16 x float> %i.aeg, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aep = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeq = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aer = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aes = shufflevector <16 x float> %i.aek, <16 x float> %i.aeo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aet = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aeu = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aev = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aew = shufflevector <16 x float> %i.aek, <16 x float> %i.aeo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aex = shufflevector <16 x float> %i.aep, <16 x float> %i.aeq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aey = shufflevector <16 x float> %i.aer, <16 x float> %i.aes, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aez = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afa = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afb = shufflevector <16 x float> %i.aep, <16 x float> %i.aeq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afc = shufflevector <16 x float> %i.aer, <16 x float> %i.aes, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afd = shufflevector <16 x float> %i.aet, <16 x float> %i.aeu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afe = shufflevector <16 x float> %i.aev, <16 x float> %i.aew, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aff = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aex)
  store <16 x bfloat> %i.aff, ptr %.112511675.us.i, align 1, !tbaa !20
  %i.afg = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 32
  %i.afh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aey)
  store <16 x bfloat> %i.afh, ptr %i.afg, align 1, !tbaa !20
  %i.afi = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 64
  %i.afj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aez)
  store <16 x bfloat> %i.afj, ptr %i.afi, align 1, !tbaa !20
  %i.afk = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 96
  %i.afl = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afa)
  store <16 x bfloat> %i.afl, ptr %i.afk, align 1, !tbaa !20
  %i.afm = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 128
  %i.afn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afb)
  store <16 x bfloat> %i.afn, ptr %i.afm, align 1, !tbaa !20
  %i.afo = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 160
  %i.afp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afc)
  store <16 x bfloat> %i.afp, ptr %i.afo, align 1, !tbaa !20
  %i.afq = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 192
  %i.afr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afd)
  store <16 x bfloat> %i.afr, ptr %i.afq, align 1, !tbaa !20
  %i.afs = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 224
  %i.aft = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.afe)
  store <16 x bfloat> %i.aft, ptr %i.afs, align 1, !tbaa !20
  %i.afu = getelementptr inbounds nuw i8, ptr %.112511675.us.i, i64 256 ; 3 uses
  %indvars.iv.next2233.i = add nuw nsw i64 %indvars.iv2232.i, 1 ; 2 uses
  %exitcond2236.not.i = icmp eq i64 %indvars.iv.next2233.i, %wide.trip.count2235.i
  br i1 %exitcond2236.not.i, label %._crit_edge1676.us.i, label %bb.ba, !llvm.loop !38

._crit_edge1676.us.i:                             ; preds = %bb.ba
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.012311687.us.i, i64 %i.jt ; 2 uses
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.012351686.us.i, i64 %i.jt ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %.012371685.us.i, i64 %i.jt ; 2 uses
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.012391684.us.i, i64 %i.jt ; 2 uses
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.012411683.us.i, i64 %i.jt ; 2 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %.012441682.us.i, i64 %i.jt ; 2 uses
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %.012461681.us.i, i64 %i.jt ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %.012481680.us.i, i64 %i.jt ; 2 uses
  %i.agd = add nuw nsw i32 %.012621678.us.i, 16   ; 2 uses
  %i.age = or disjoint i32 %i.agd, 15
  %i.agf = icmp slt i32 %i.age, %2
  br i1 %i.agf, label %.preheader1580.us.i, label %.preheader1583.i, !llvm.loop !39

.preheader1583.i:                                 ; preds = %._crit_edge1676.us.i, %_ZN4ncnn3MatD2Ev.exit1303.i
  %.01262.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.kn, %._crit_edge1676.us.i ] ; 4 uses
  %.01250.lcssa.i = phi ptr [ %i.adi, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afu, %._crit_edge1676.us.i ] ; 3 uses
  %.01248.lcssa.i = phi ptr [ %i.acx, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agc, %._crit_edge1676.us.i ]
  %.01246.lcssa.i = phi ptr [ %i.acu, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.agb, %._crit_edge1676.us.i ]
  %.01244.lcssa.i = phi ptr [ %i.acq, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.aga, %._crit_edge1676.us.i ]
  %.01241.lcssa.i = phi ptr [ %i.acm, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afz, %._crit_edge1676.us.i ]
  %.01239.lcssa.i = phi ptr [ %i.aci, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afy, %._crit_edge1676.us.i ]
  %.01237.lcssa.i = phi ptr [ %i.ace, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afx, %._crit_edge1676.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.aca, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afw, %._crit_edge1676.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.abw, %_ZN4ncnn3MatD2Ev.exit1303.i ], [ %i.afv, %._crit_edge1676.us.i ] ; 3 uses
  %i.agg = or disjoint i32 %.01262.lcssa.i, 7
  %i.agh = icmp slt i32 %i.agg, %2
  br i1 %i.agh, label %.preheader1579.lr.ph.i, label %._crit_edge1722.i

.preheader1583.thread.i:                          ; preds = %.preheader1580.lr.ph.i
  %scevgep2206.i = getelementptr i8, ptr %i.abs, i64 %i.kj
  %scevgep2209.i = getelementptr i8, ptr %scevgep2206.i, i64 %i.abr ; 2 uses
  br i1 %i.ks, label %.preheader1579.preheader.i, label %._crit_edge1722.i

.preheader1579.lr.ph.i:                           ; preds = %.preheader1583.i
  br i1 %i.jr, label %.preheader1579.us.i, label %.preheader1579.preheader.i

.preheader1579.preheader.i:                       ; preds = %.preheader1579.lr.ph.i, %.preheader1583.thread.i
  %.01262.lcssa24862508.i = phi i32 [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.kn, %.preheader1583.thread.i ] ; 2 uses
  %.01250.lcssa24872507.i = phi ptr [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ], [ %i.adi, %.preheader1583.thread.i ]
  %.01231.lcssa24952506.i = phi ptr [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ], [ %scevgep2209.i, %.preheader1583.thread.i ]
  %i.agi = sub i32 %i.ko, %.01262.lcssa24862508.i ; 2 uses
  %i.agj = lshr i32 %i.agi, 1
  %i.agk = and i32 %i.agj, 2147483644
  %narrow2441.i.a = add nuw i32 %i.agk, 4
  %i.agl = zext i32 %narrow2441.i.a to i64
  %i.agm = mul nsw i64 %i.agl, %i.jv
  %scevgep2237.i = getelementptr i8, ptr %.01231.lcssa24952506.i, i64 %i.agm
  %i.agn = add i32 %.01262.lcssa24862508.i, 8
  %i.ago = and i32 %i.agi, -8
  %i.agp = add i32 %i.agn, %i.ago
  br label %._crit_edge1722.i

.preheader1579.us.i:                              ; preds = %.preheader1579.lr.ph.i, %._crit_edge1710.us.i
  %.112321721.us.i = phi ptr [ %i.aiu, %._crit_edge1710.us.i ], [ %.01231.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112361720.us.i = phi ptr [ %i.aiv, %._crit_edge1710.us.i ], [ %.01235.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112381719.us.i = phi ptr [ %i.aiw, %._crit_edge1710.us.i ], [ %.01237.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112401718.us.i = phi ptr [ %i.aix, %._crit_edge1710.us.i ], [ %.01239.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112421717.us.i = phi ptr [ %i.aiy, %._crit_edge1710.us.i ], [ %.01241.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112451716.us.i = phi ptr [ %i.aiz, %._crit_edge1710.us.i ], [ %.01244.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112471715.us.i = phi ptr [ %i.aja, %._crit_edge1710.us.i ], [ %.01246.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.112491714.us.i = phi ptr [ %i.ajb, %._crit_edge1710.us.i ], [ %.01248.lcssa.i, %.preheader1579.lr.ph.i ] ; 2 uses
  %.212521713.us.i = phi ptr [ %i.ait, %._crit_edge1710.us.i ], [ %.01250.lcssa.i, %.preheader1579.lr.ph.i ]
  %.112631712.us.i = phi i32 [ %i.ajc, %._crit_edge1710.us.i ], [ %.01262.lcssa.i, %.preheader1579.lr.ph.i ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.preheader1579.us.i
  %indvars.iv2238.i = phi i64 [ 0, %.preheader1579.us.i ], [ %indvars.iv.next2239.i, %bb.bb ] ; 9 uses
  %.312531708.us.i = phi ptr [ %.212521713.us.i, %.preheader1579.us.i ], [ %i.ait, %bb.bb ] ; 9 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %.112321721.us.i, i64 %indvars.iv2238.i
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %.112361720.us.i, i64 %indvars.iv2238.i
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %.112381719.us.i, i64 %indvars.iv2238.i
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %.112401718.us.i, i64 %indvars.iv2238.i
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %.112421717.us.i, i64 %indvars.iv2238.i
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %.112451716.us.i, i64 %indvars.iv2238.i
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.112471715.us.i, i64 %indvars.iv2238.i
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.112491714.us.i, i64 %indvars.iv2238.i
  %i.agy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agq, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.agz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agr, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.aha = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ags, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agt, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agu, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahd = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agv, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahe = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agw, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.agx, <8 x i32> %i.jm, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ahg = shufflevector <8 x float> %i.agy, <8 x float> %i.agz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahh = shufflevector <8 x float> %i.agy, <8 x float> %i.agz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahi = shufflevector <8 x float> %i.aha, <8 x float> %i.ahb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahj = shufflevector <8 x float> %i.aha, <8 x float> %i.ahb, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahk = shufflevector <8 x float> %i.ahc, <8 x float> %i.ahd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahl = shufflevector <8 x float> %i.ahc, <8 x float> %i.ahd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ahm = shufflevector <8 x float> %i.ahe, <8 x float> %i.ahf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ahn = shufflevector <8 x float> %i.ahe, <8 x float> %i.ahf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aho = shufflevector <8 x float> %i.ahg, <8 x float> %i.ahi, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %i.aki = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akh)
  store <8 x bfloat> %i.aki, ptr %i.akg, align 1, !tbaa !20
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.akf, i64 %i.jz
  %i.akk = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 112
  %i.akl = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akj, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akl)
  store <8 x bfloat> %i.akm, ptr %i.akk, align 1, !tbaa !20
  %i.akn = getelementptr inbounds nuw i8, ptr %.512551732.us.i, i64 128 ; 3 uses
  %indvars.iv.next2247.i.1 = add nuw nsw i64 %indvars.iv2246.i, 2 ; 2 uses
  %niter546.next.1 = add i64 %niter546, 2         ; 2 uses
  %niter546.ncmp.1 = icmp eq i64 %niter546.next.1, %unroll_iter545
  br i1 %niter546.ncmp.1, label %._crit_edge1734.us.i.unr-lcssa, label %.preheader1578.us.i.new, !llvm.loop !42

._crit_edge1734.us.i.unr-lcssa:                   ; preds = %.preheader1578.us.i.new
  br i1 %lcmp.mod542.not, label %._crit_edge1734.us.i, label %.epil.preheader539

.epil.preheader539:                               ; preds = %._crit_edge1734.us.i.unr-lcssa, %.preheader1578.us.i
  %indvars.iv2246.i.epil.init = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2247.i.1, %._crit_edge1734.us.i.unr-lcssa ]
  %.512551732.us.i.epil.init = phi ptr [ %.412541737.us.i, %.preheader1578.us.i ], [ %i.akn, %._crit_edge1734.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod544)
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %indvars.iv2246.i.epil.init ; 2 uses
  %i.akp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ako, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.akq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akp)
  store <8 x bfloat> %i.akq, ptr %.512551732.us.i.epil.init, align 1, !tbaa !20
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.jz ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 16
  %i.akt = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akr, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aku = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akt)
  store <8 x bfloat> %i.aku, ptr %i.aks, align 1, !tbaa !20
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.akr, i64 %i.jz ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 32
  %i.akx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akv, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aky = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akx)
  store <8 x bfloat> %i.aky, ptr %i.akw, align 1, !tbaa !20
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.jz
  %i.ala = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 48
  %i.alb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.akz, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alb)
  store <8 x bfloat> %i.alc, ptr %i.ala, align 1, !tbaa !20
  %i.ald = getelementptr inbounds nuw i8, ptr %.512551732.us.i.epil.init, i64 64
  br label %._crit_edge1734.us.i

._crit_edge1734.us.i:                             ; preds = %._crit_edge1734.us.i.unr-lcssa, %.epil.preheader539
  %.lcssa504 = phi ptr [ %i.akn, %._crit_edge1734.us.i.unr-lcssa ], [ %i.ald, %.epil.preheader539 ] ; 2 uses
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %.212331738.us.i, i64 %i.kb ; 2 uses
  %i.alf = add nuw nsw i32 %.212641736.us.i, 4    ; 3 uses
  %i.alg = or disjoint i32 %i.alf, 3
  %i.alh = icmp slt i32 %i.alg, %2
  br i1 %i.alh, label %.preheader1578.us.i, label %.preheader1582.i, !llvm.loop !43

.preheader1582.i:                                 ; preds = %._crit_edge1734.us.i, %._crit_edge1722.i
  %.21264.lcssa.i = phi i32 [ %.11263.lcssa.i, %._crit_edge1722.i ], [ %i.alf, %._crit_edge1734.us.i ] ; 3 uses
  %.41254.lcssa.i = phi ptr [ %.21252.lcssa.i, %._crit_edge1722.i ], [ %.lcssa504, %._crit_edge1734.us.i ] ; 2 uses
  %.21233.lcssa.i = phi ptr [ %.11232.lcssa.i, %._crit_edge1722.i ], [ %i.ale, %._crit_edge1734.us.i ] ; 2 uses
  %i.ali = or disjoint i32 %.21264.lcssa.i, 1
  %i.alj = icmp slt i32 %i.ali, %2
  br i1 %i.alj, label %.preheader1577.lr.ph.i, label %.preheader1581.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1582.i
  br i1 %i.jr, label %.preheader1577.us.i, label %._crit_edge1767.split.i

.preheader1577.us.i:                              ; preds = %.preheader1577.lr.ph.i, %._crit_edge1750.us.i
  %.312341754.us.i = phi ptr [ %i.amj, %._crit_edge1750.us.i ], [ %.21233.lcssa.i, %.preheader1577.lr.ph.i ] ; 4 uses
  %.712571753.us.i = phi ptr [ %.lcssa507, %._crit_edge1750.us.i ], [ %.41254.lcssa.i, %.preheader1577.lr.ph.i ] ; 2 uses
  %.312651752.us.i = phi i32 [ %i.amk, %._crit_edge1750.us.i ], [ %.21264.lcssa.i, %.preheader1577.lr.ph.i ]
  br i1 %i.kv, label %.epil.preheader547, label %.preheader1577.us.i.new

.preheader1577.us.i.new:                          ; preds = %.preheader1577.us.i, %.preheader1577.us.i.new
  %indvars.iv2253.i = phi i64 [ %indvars.iv.next2254.i.1, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ] ; 3 uses
  %.812581748.us.i = phi ptr [ %i.ama, %.preheader1577.us.i.new ], [ %.712571753.us.i, %.preheader1577.us.i ] ; 5 uses
  %niter554 = phi i64 [ %niter554.next.1, %.preheader1577.us.i.new ], [ 0, %.preheader1577.us.i ]
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2253.i ; 2 uses
  %i.all = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alk, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.all)
  store <8 x bfloat> %i.alm, ptr %.812581748.us.i, align 1, !tbaa !20
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %i.jz
  %i.alo = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 16
  %i.alp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.aln, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alp)
  store <8 x bfloat> %i.alq, ptr %i.alo, align 1, !tbaa !20
  %i.alr = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 32
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2253.i
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 4 ; 2 uses
  %i.alu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alt, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.alu)
  store <8 x bfloat> %i.alv, ptr %i.alr, align 1, !tbaa !20
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.alt, i64 %i.jz
  %i.alx = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 48
  %i.aly = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alw, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.alz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aly)
  store <8 x bfloat> %i.alz, ptr %i.alx, align 1, !tbaa !20
  %i.ama = getelementptr inbounds nuw i8, ptr %.812581748.us.i, i64 64 ; 3 uses
  %indvars.iv.next2254.i.1 = add nuw nsw i64 %indvars.iv2253.i, 2 ; 2 uses
  %niter554.next.1 = add i64 %niter554, 2         ; 2 uses
  %niter554.ncmp.1 = icmp eq i64 %niter554.next.1, %unroll_iter553
  br i1 %niter554.ncmp.1, label %._crit_edge1750.us.i.unr-lcssa, label %.preheader1577.us.i.new, !llvm.loop !44

._crit_edge1750.us.i.unr-lcssa:                   ; preds = %.preheader1577.us.i.new
  br i1 %lcmp.mod550.not, label %._crit_edge1750.us.i, label %.epil.preheader547

.epil.preheader547:                               ; preds = %._crit_edge1750.us.i.unr-lcssa, %.preheader1577.us.i
  %indvars.iv2253.i.epil.init = phi i64 [ 0, %.preheader1577.us.i ], [ %indvars.iv.next2254.i.1, %._crit_edge1750.us.i.unr-lcssa ]
  %.812581748.us.i.epil.init = phi ptr [ %.712571753.us.i, %.preheader1577.us.i ], [ %i.ama, %._crit_edge1750.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod552)
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %indvars.iv2253.i.epil.init ; 2 uses
  %i.amc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amb, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amc)
  store <8 x bfloat> %i.amd, ptr %.812581748.us.i.epil.init, align 1, !tbaa !20
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.amb, i64 %i.jz
  %i.amf = getelementptr inbounds nuw i8, ptr %.812581748.us.i.epil.init, i64 16
  %i.amg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ame, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amg)
  store <8 x bfloat> %i.amh, ptr %i.amf, align 1, !tbaa !20
  %i.ami = getelementptr inbounds nuw i8, ptr %.812581748.us.i.epil.init, i64 32
  br label %._crit_edge1750.us.i

._crit_edge1750.us.i:                             ; preds = %._crit_edge1750.us.i.unr-lcssa, %.epil.preheader547
  %.lcssa507 = phi ptr [ %i.ama, %._crit_edge1750.us.i.unr-lcssa ], [ %i.ami, %.epil.preheader547 ] ; 2 uses
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %.312341754.us.i, i64 %i.kd ; 2 uses
  %i.amk = add nuw nsw i32 %.312651752.us.i, 2    ; 3 uses
  %i.aml = or disjoint i32 %i.amk, 1
  %i.amm = icmp slt i32 %i.aml, %2
  br i1 %i.amm, label %.preheader1577.us.i, label %.preheader1581.i, !llvm.loop !45

.preheader1581.i:                                 ; preds = %._crit_edge1750.us.i, %.preheader1582.i
  %.31265.lcssa.i = phi i32 [ %.21264.lcssa.i, %.preheader1582.i ], [ %i.amk, %._crit_edge1750.us.i ] ; 2 uses
  %.71257.lcssa.i = phi ptr [ %.41254.lcssa.i, %.preheader1582.i ], [ %.lcssa507, %._crit_edge1750.us.i ]
  %.31234.lcssa.i = phi ptr [ %.21233.lcssa.i, %.preheader1582.i ], [ %i.amj, %._crit_edge1750.us.i ] ; 5 uses
  %i.amn = icmp sge i32 %.31265.lcssa.i, %2
  %brmerge2000.i = or i1 %i.ke, %i.amn
  br i1 %brmerge2000.i, label %._crit_edge1767.split.i, label %.preheader1576.i

.preheader1576.i:                                 ; preds = %.preheader1581.i, %._crit_edge1763.i
  %.1012601766.i = phi ptr [ %.lcssa510, %._crit_edge1763.i ], [ %.71257.lcssa.i, %.preheader1581.i ] ; 2 uses
  %.412661765.i = phi i32 [ %i.ams, %._crit_edge1763.i ], [ %.31265.lcssa.i, %.preheader1581.i ]
  br i1 %i.kw, label %.epil.preheader555, label %.preheader1576.i.new

._crit_edge1763.i.unr-lcssa:                      ; preds = %.preheader1576.i.new
  br i1 %lcmp.mod558.not, label %._crit_edge1763.i, label %.epil.preheader555

.epil.preheader555:                               ; preds = %._crit_edge1763.i.unr-lcssa, %.preheader1576.i
  %indvars.iv2258.i.epil.init = phi i64 [ 0, %.preheader1576.i ], [ %indvars.iv.next2259.i.3, %._crit_edge1763.i.unr-lcssa ]
  %.1112611761.i.epil.init = phi ptr [ %.1012601766.i, %.preheader1576.i ], [ %i.anl, %._crit_edge1763.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod560)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader555
  %indvars.iv2258.i.epil = phi i64 [ %indvars.iv2258.i.epil.init, %.epil.preheader555 ], [ %indvars.iv.next2259.i.epil, %bb.bc ] ; 2 uses
  %.1112611761.i.epil = phi ptr [ %.1112611761.i.epil.init, %.epil.preheader555 ], [ %i.amr, %bb.bc ] ; 2 uses
  %epil.iter557 = phi i64 [ 0, %.epil.preheader555 ], [ %epil.iter557.next, %bb.bc ]
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2258.i.epil
  %i.amp = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amo, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amp)
  store <8 x bfloat> %i.amq, ptr %.1112611761.i.epil, align 1, !tbaa !20
  %i.amr = getelementptr inbounds nuw i8, ptr %.1112611761.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2259.i.epil = add nuw nsw i64 %indvars.iv2258.i.epil, 1
  %epil.iter557.next = add i64 %epil.iter557, 1   ; 2 uses
  %epil.iter557.cmp.not = icmp eq i64 %epil.iter557.next, %xtraiter556
  br i1 %epil.iter557.cmp.not, label %._crit_edge1763.i, label %bb.bc, !llvm.loop !46

._crit_edge1763.i:                                ; preds = %bb.bc, %._crit_edge1763.i.unr-lcssa
  %.lcssa510 = phi ptr [ %i.anl, %._crit_edge1763.i.unr-lcssa ], [ %i.amr, %bb.bc ]
  %i.ams = add nuw nsw i32 %.412661765.i, 1       ; 2 uses
  %exitcond2263.not.i = icmp eq i32 %i.ams, %2
  br i1 %exitcond2263.not.i, label %._crit_edge1767.split.i, label %.preheader1576.i, !llvm.loop !47

.preheader1576.i.new:                             ; preds = %.preheader1576.i, %.preheader1576.i.new
  %indvars.iv2258.i = phi i64 [ %indvars.iv.next2259.i.3, %.preheader1576.i.new ], [ 0, %.preheader1576.i ] ; 5 uses
  %.1112611761.i = phi ptr [ %i.anl, %.preheader1576.i.new ], [ %.1012601766.i, %.preheader1576.i ] ; 5 uses
  %niter562 = phi i64 [ %niter562.next.3, %.preheader1576.i.new ], [ 0, %.preheader1576.i ]
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2258.i
  %i.amu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.amt, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.amv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amu)
  store <8 x bfloat> %i.amv, ptr %.1112611761.i, align 1, !tbaa !20
  %i.amw = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 16
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2258.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 4
  %i.amz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amy, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ana = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.amz)
  store <8 x bfloat> %i.ana, ptr %i.amw, align 1, !tbaa !20
  %i.anb = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 32
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2258.i
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  %i.ane = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.and, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.anf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ane)
  store <8 x bfloat> %i.anf, ptr %i.anb, align 1, !tbaa !20
  %i.ang = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 48
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %.31234.lcssa.i, i64 %indvars.iv2258.i
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 12
  %i.anj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ani, <8 x i32> %i.jy, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ank = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.anj)
  store <8 x bfloat> %i.ank, ptr %i.ang, align 1, !tbaa !20
  %i.anl = getelementptr inbounds nuw i8, ptr %.1112611761.i, i64 64 ; 3 uses
  %indvars.iv.next2259.i.3 = add nuw nsw i64 %indvars.iv2258.i, 4 ; 2 uses
  %niter562.next.3 = add i64 %niter562, 4         ; 2 uses
  %niter562.ncmp.3 = icmp eq i64 %niter562.next.3, %unroll_iter561
  br i1 %niter562.ncmp.3, label %._crit_edge1763.i.unr-lcssa, label %.preheader1576.i.new, !llvm.loop !48

._crit_edge1767.split.i:                          ; preds = %._crit_edge1763.i, %.preheader1581.i, %.preheader1577.lr.ph.i, %.preheader1578.lr.ph.i
  %indvars.iv.next2267.i = add nuw nsw i64 %indvars.iv2266.i, 8 ; 3 uses
  %6 = or disjoint i64 %indvars.iv.next2267.i, 7  ; 2 uses
  %i.anm = icmp slt i64 %6, %i.kq
  %indvars.iv.next2208.i = add i32 %indvars.iv2264.i, %i.kl
  %7 = trunc nsw i64 %6 to i32
  br i1 %i.anm, label %_ZN4ncnn3MatD2Ev.exit1303.i, label %.preheader1575.loopexit.i, !llvm.loop !49

.preheader1566.loopexit.i:                        ; preds = %._crit_edge1853.split.i
  %i.ann = trunc nsw i64 %indvars.iv.next2319.i.a to i32
  br label %.preheader1566.i

.preheader1566.i:                                 ; preds = %.preheader1566.loopexit.i, %.preheader1575.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1575.i ], [ %i.ann, %.preheader1566.loopexit.i ] ; 4 uses
  %i.ano = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.anp = icmp slt i32 %i.ano, %3
  br i1 %i.anp, label %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i, label %.preheader1556.i

_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i:                ; preds = %.preheader1566.i
  %i.anq = mul i32 %i.a, %2                       ; 5 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ant = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.anu = shufflevector <4 x i32> %i.ant, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anv = mul <4 x i32> %i.anu, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.anw = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %i.anx = shufflevector <8 x i32> %i.anw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.any = mul <8 x i32> %i.anx, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.anz = insertelement <16 x i32> poison, i32 %i.a, i64 0
  %i.aoa = shufflevector <16 x i32> %i.anz, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aob = mul <16 x i32> %i.aoa, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.aoc = icmp sgt i32 %2, 15
  %i.aod = icmp sgt i32 %i.a, 0                   ; 4 uses
  %i.aoe = shl i32 %i.a, 4
  %i.aof = sext i32 %i.aoe to i64                 ; 3 uses
  %i.aog = shl i32 %i.a, 3
  %i.aoh = sext i32 %i.aog to i64                 ; 3 uses
  %i.aoi = shl i32 %i.a, 2
  %i.aoj = sext i32 %i.aoi to i64                 ; 2 uses
  %i.aok = sext i32 %i.a to i64                   ; 6 uses
  %i.aol = shl i32 %i.a, 1
  %i.aom = sext i32 %i.aol to i64                 ; 2 uses
  %i.aon = icmp slt i32 %i.a, 1
  %i.aoo = add i32 %2, -16                        ; 2 uses
  %i.aop = lshr i32 %i.aoo, 2
  %i.aoq = and i32 %i.aop, 1073741820
  %narrow2444.i = add nuw nsw i32 %i.aoq, 4
  %i.aor = zext nneg i32 %narrow2444.i to i64
  %i.aos = mul nsw i64 %i.aof, %i.aor
  %i.aot = mul i32 %i.anq, %.2.lcssa.i
  %i.aou = shl i32 %i.anq, 1                      ; 2 uses
  %i.aov = mul i32 %i.ano, %i.anq
  %i.aow = and i32 %i.aoo, -16
  %i.aox = add i32 %i.aow, 16                     ; 4 uses
  %i.aoy = add i32 %2, -8
  %i.aoz = sext i32 %.2.lcssa.i to i64
  %i.apa = sext i32 %3 to i64
  %i.apb = or disjoint i32 %i.aox, 7
  %i.apc = icmp slt i32 %i.apb, %2
  %wide.trip.count2331.i = zext i32 %i.a to i64   ; 19 uses
  %i.apd = add nsw i64 %wide.trip.count2331.i, -1 ; 3 uses
  %xtraiter580 = and i64 %wide.trip.count2331.i, 1
  %i.ape = icmp eq i64 %i.apd, 0
  %unroll_iter585 = and i64 %wide.trip.count2331.i, 2147483646
  %lcmp.mod582.not = icmp eq i64 %xtraiter580, 0
  %lcmp.mod584 = trunc i32 %i.a to i1
  %xtraiter588 = and i64 %wide.trip.count2331.i, 1
  %i.apf = icmp eq i64 %i.apd, 0
  %unroll_iter593 = and i64 %wide.trip.count2331.i, 2147483646
  %lcmp.mod590.not = icmp eq i64 %xtraiter588, 0
  %lcmp.mod592 = trunc i32 %i.a to i1
  %xtraiter596 = and i64 %wide.trip.count2331.i, 1
  %i.apg = icmp eq i64 %i.apd, 0
  %unroll_iter601 = and i64 %wide.trip.count2331.i, 2147483646
  %lcmp.mod598.not = icmp eq i64 %xtraiter596, 0
  %lcmp.mod600 = trunc i32 %i.a to i1
  %min.iters.check334 = icmp ult i32 %i.a, 4
  %min.iters.check336 = icmp ult i32 %i.a, 16
  %i.aph = and i64 %wide.trip.count2331.i, 12
  %n.vec338 = and i64 %wide.trip.count2331.i, 2147483632 ; 5 uses
  %i.api = shl nuw nsw i64 %n.vec338, 3
  %cmp.n349 = icmp eq i64 %n.vec338, %wide.trip.count2331.i
  %min.epilog.iters.check354 = icmp eq i64 %i.aph, 0
  %n.vec356 = and i64 %wide.trip.count2331.i, 2147483644 ; 4 uses
  %i.apj = shl nuw nsw i64 %n.vec356, 3
  %cmp.n367 = icmp eq i64 %n.vec356, %wide.trip.count2331.i
  %min.iters.check = icmp ult i32 %i.a, 4
  %min.iters.check322 = icmp ult i32 %i.a, 16
  %i.apk = and i64 %wide.trip.count2331.i, 12
  %n.vec = and i64 %wide.trip.count2331.i, 2147483632 ; 5 uses
  %i.apl = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2331.i
  %min.epilog.iters.check = icmp eq i64 %i.apk, 0
  %n.vec324 = and i64 %wide.trip.count2331.i, 2147483644 ; 4 uses
  %i.apm = shl nuw nsw i64 %n.vec324, 2
  %cmp.n331 = icmp eq i64 %n.vec324, %wide.trip.count2331.i
  br label %_ZN4ncnn3MatD2Ev.exit1301.i

_ZN4ncnn3MatD2Ev.exit1302.i:                      ; preds = %._crit_edge1853.split.i, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i
  %indvars.iv2318.i.a = phi i64 [ %i.abh, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2319.i.a, %._crit_edge1853.split.i ] ; 2 uses
  %i.apn = phi i32 [ %i.zo, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayl, %._crit_edge1853.split.i ]
  %i.apo = phi <4 x i32> [ %i.abd, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %i.ayk, %._crit_edge1853.split.i ] ; 2 uses
  %i.app = sext <4 x i32> %i.apo to <4 x i64>
  %i.apq = shl nsw <4 x i64> %i.app, splat (i64 2) ; 4 uses
  %i.apr = load ptr, ptr %0, align 8, !tbaa !9    ; 5 uses
  %i.aps = trunc i64 %indvars.iv2318.i.a to i32   ; 6 uses
  %i.apt = mul i32 %i.zt, %i.aps
  %i.apu = sext i32 %i.apt to i64
  %i.apv = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.apu ; 2 uses
  %i.apw = add i32 %i.aps, 1
  %i.apx = mul i32 %i.apw, %i.zt
  %i.apy = sext i32 %i.apx to i64
  %i.apz = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.apy ; 2 uses
  %i.aqa = add i32 %i.aps, 2
  %i.aqb = mul i32 %i.aqa, %i.zt
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.aqc ; 2 uses
  %i.aqe = mul i32 %i.apn, %i.zt
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.aqf ; 2 uses
  %i.aqh = lshr i32 %i.aps, 4
  %i.aqi = lshr i32 %i.aps, 3
  %i.aqj = and i32 %i.aqi, 1
  %i.aqk = add nuw nsw i32 %i.aqj, %i.aqh
  %i.aql = lshr exact i32 %i.aps, 2
  %i.aqm = and i32 %i.aql, 1
  %i.aqn = add nuw nsw i32 %i.aqk, %i.aqm
  %i.aqo = load ptr, ptr %1, align 8, !tbaa !9, !noalias !50
  %i.aqp = load i64, ptr %i.zu, align 8, !tbaa !18, !noalias !50
  %i.aqq = zext nneg i32 %i.aqn to i64
  %i.aqr = mul i64 %i.aqp, %i.aqq
  %i.aqs = load i64, ptr %i.zv, align 8, !tbaa !19, !noalias !50
  %i.aqt = mul i64 %i.aqr, %i.aqs
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %i.aqt ; 4 uses
  br i1 %i.aaf, label %.preheader1571.lr.ph.i, label %.preheader1574.i

.preheader1571.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1302.i
  br i1 %i.aag, label %.preheader1571.us.i, label %.preheader1574.thread.i

.preheader1571.us.i:                              ; preds = %.preheader1571.lr.ph.i, %._crit_edge1772.us.i
  %.011911779.us.i = phi i32 [ %i.asb, %._crit_edge1772.us.i ], [ 0, %.preheader1571.lr.ph.i ]
  %.011961778.us.i = phi ptr [ %i.arw, %._crit_edge1772.us.i ], [ %i.aqu, %.preheader1571.lr.ph.i ]
  %.012071777.us.i = phi ptr [ %i.asa, %._crit_edge1772.us.i ], [ %i.aqg, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012101776.us.i = phi ptr [ %i.arz, %._crit_edge1772.us.i ], [ %i.aqd, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012131775.us.i = phi ptr [ %i.ary, %._crit_edge1772.us.i ], [ %i.apz, %.preheader1571.lr.ph.i ] ; 2 uses
  %.012161774.us.i = phi ptr [ %i.arx, %._crit_edge1772.us.i ], [ %i.apv, %.preheader1571.lr.ph.i ] ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.preheader1571.us.i
  %indvars.iv2284.i = phi i64 [ 0, %.preheader1571.us.i ], [ %indvars.iv.next2285.i, %bb.bd ] ; 5 uses
  %.111971770.us.i = phi ptr [ %.011961778.us.i, %.preheader1571.us.i ], [ %i.arw, %bb.bd ] ; 5 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.012161774.us.i, i64 %indvars.iv2284.i
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %.012131775.us.i, i64 %indvars.iv2284.i
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %.012101776.us.i, i64 %indvars.iv2284.i
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %.012071777.us.i, i64 %indvars.iv2284.i
  %i.aqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqv, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ara = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqw, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqx, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.arc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqy, <16 x i32> %i.aae, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ard = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.are = shufflevector <16 x float> %i.aqz, <16 x float> %i.ara, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.arb, <16 x float> %i.arc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.arb, <16 x float> %i.arc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arh = shufflevector <16 x float> %i.ard, <16 x float> %i.arf, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.ari = shufflevector <16 x float> %i.are, <16 x float> %i.arg, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arj = shufflevector <16 x float> %i.ard, <16 x float> %i.arf, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ark = shufflevector <16 x float> %i.are, <16 x float> %i.arg, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arl = shufflevector <16 x float> %i.arh, <16 x float> %i.ari, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arm = shufflevector <16 x float> %i.arj, <16 x float> %i.ark, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arn = shufflevector <16 x float> %i.arh, <16 x float> %i.ari, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aro = shufflevector <16 x float> %i.arj, <16 x float> %i.ark, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arl)
  store <16 x bfloat> %i.arp, ptr %.111971770.us.i, align 1, !tbaa !20
  %i.arq = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 32
  %i.arr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arm)
  store <16 x bfloat> %i.arr, ptr %i.arq, align 1, !tbaa !20
  %i.ars = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 64
  %i.art = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.arn)
  store <16 x bfloat> %i.art, ptr %i.ars, align 1, !tbaa !20
  %i.aru = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 96
  %i.arv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.aro)
  store <16 x bfloat> %i.arv, ptr %i.aru, align 1, !tbaa !20
  %i.arw = getelementptr inbounds nuw i8, ptr %.111971770.us.i, i64 128 ; 3 uses
  %indvars.iv.next2285.i = add nuw nsw i64 %indvars.iv2284.i, 1 ; 2 uses
  %exitcond2288.not.i = icmp eq i64 %indvars.iv.next2285.i, %wide.trip.count2287.i
  br i1 %exitcond2288.not.i, label %._crit_edge1772.us.i, label %bb.bd, !llvm.loop !53

._crit_edge1772.us.i:                             ; preds = %bb.bd
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %.012161774.us.i, i64 %i.aai ; 2 uses
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %.012131775.us.i, i64 %i.aai ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %.012101776.us.i, i64 %i.aai ; 2 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %.012071777.us.i, i64 %i.aai ; 2 uses
  %i.asb = add nuw nsw i32 %.011911779.us.i, 16   ; 2 uses
  %i.asc = or disjoint i32 %i.asb, 15
  %i.asd = icmp slt i32 %i.asc, %2
  br i1 %i.asd, label %.preheader1571.us.i, label %.preheader1574.i, !llvm.loop !54

.preheader1574.i:                                 ; preds = %._crit_edge1772.us.i, %_ZN4ncnn3MatD2Ev.exit1302.i
  %.01216.lcssa.i = phi ptr [ %i.apv, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arx, %._crit_edge1772.us.i ] ; 3 uses
  %.01213.lcssa.i = phi ptr [ %i.apz, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.ary, %._crit_edge1772.us.i ] ; 3 uses
  %.01210.lcssa.i = phi ptr [ %i.aqd, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arz, %._crit_edge1772.us.i ] ; 3 uses
  %.01207.lcssa.i = phi ptr [ %i.aqg, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.asa, %._crit_edge1772.us.i ] ; 3 uses
  %.01196.lcssa.i = phi ptr [ %i.aqu, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.arw, %._crit_edge1772.us.i ] ; 3 uses
  %.01191.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1302.i ], [ %i.abf, %._crit_edge1772.us.i ] ; 4 uses
  %i.ase = or disjoint i32 %.01191.lcssa.i, 7
  %i.asf = icmp slt i32 %i.ase, %2
  br i1 %i.asf, label %.preheader1570.lr.ph.i, label %.preheader1573.i

.preheader1574.thread.i:                          ; preds = %.preheader1571.lr.ph.i
  %scevgep2271.i = getelementptr i8, ptr %i.apr, i64 %i.aay ; 4 uses
  %i.asg = extractelement <4 x i64> %i.apq, i64 0
  %scevgep2274.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.asg ; 2 uses
  %i.ash = extractelement <4 x i64> %i.apq, i64 1
  %scevgep2277.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.ash ; 2 uses
  %i.asi = extractelement <4 x i64> %i.apq, i64 2
  %scevgep2280.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.asi ; 2 uses
  %i.asj = extractelement <4 x i64> %i.apq, i64 3
  %scevgep2283.i = getelementptr i8, ptr %scevgep2271.i, i64 %i.asj ; 2 uses
  br i1 %i.abk, label %.preheader1570.preheader.i, label %.preheader1573.i

.preheader1570.lr.ph.i:                           ; preds = %.preheader1574.i
  br i1 %i.aag, label %.preheader1570.us.i, label %.preheader1570.preheader.i

.preheader1570.preheader.i:                       ; preds = %.preheader1570.lr.ph.i, %.preheader1574.thread.i
  %.01216.lcssa25312548.i = phi ptr [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2274.i, %.preheader1574.thread.i ]
  %.01213.lcssa25322547.i = phi ptr [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2277.i, %.preheader1574.thread.i ]
  %.01210.lcssa25332546.i = phi ptr [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2280.i, %.preheader1574.thread.i ]
  %.01207.lcssa25342545.i = phi ptr [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ], [ %scevgep2283.i, %.preheader1574.thread.i ]
  %.01196.lcssa25352544.i = phi ptr [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.aqu, %.preheader1574.thread.i ]
  %.01191.lcssa25362543.i = phi i32 [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ], [ %i.abf, %.preheader1574.thread.i ] ; 2 uses
  %i.ask = sub i32 %i.abg, %.01191.lcssa25362543.i ; 2 uses
  %i.asl = lshr i32 %i.ask, 1
  %i.asm = and i32 %i.asl, 2147483644
  %narrow2443.i.a = add nuw i32 %i.asm, 4
  %i.asn = zext i32 %narrow2443.i.a to i64
  %i.aso = mul nsw i64 %i.asn, %i.aak             ; 4 uses
  %scevgep2289.i = getelementptr i8, ptr %.01216.lcssa25312548.i, i64 %i.aso
  %scevgep2290.i = getelementptr i8, ptr %.01213.lcssa25322547.i, i64 %i.aso
  %scevgep2291.i = getelementptr i8, ptr %.01210.lcssa25332546.i, i64 %i.aso
  %scevgep2292.i = getelementptr i8, ptr %.01207.lcssa25342545.i, i64 %i.aso
  %i.asp = add i32 %.01191.lcssa25362543.i, 8
  %i.asq = and i32 %i.ask, -8
  %i.asr = add i32 %i.asp, %i.asq
  br label %.preheader1573.i

.preheader1570.us.i:                              ; preds = %.preheader1570.lr.ph.i, %._crit_edge1794.us.i
  %.111921801.us.i = phi i32 [ %i.atu, %._crit_edge1794.us.i ], [ %.01191.lcssa.i, %.preheader1570.lr.ph.i ]
  %.211981800.us.i = phi ptr [ %i.atp, %._crit_edge1794.us.i ], [ %.01196.lcssa.i, %.preheader1570.lr.ph.i ]
  %.112081799.us.i = phi ptr [ %i.att, %._crit_edge1794.us.i ], [ %.01207.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112111798.us.i = phi ptr [ %i.ats, %._crit_edge1794.us.i ], [ %.01210.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112141797.us.i = phi ptr [ %i.atr, %._crit_edge1794.us.i ], [ %.01213.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  %.112171796.us.i = phi ptr [ %i.atq, %._crit_edge1794.us.i ], [ %.01216.lcssa.i, %.preheader1570.lr.ph.i ] ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1570.us.i
  %indvars.iv2293.i = phi i64 [ 0, %.preheader1570.us.i ], [ %indvars.iv.next2294.i, %bb.be ] ; 5 uses
  %.311991792.us.i = phi ptr [ %.211981800.us.i, %.preheader1570.us.i ], [ %i.atp, %bb.be ] ; 5 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %indvars.iv2293.i
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %indvars.iv2293.i
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %indvars.iv2293.i
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %indvars.iv2293.i
  %i.asw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ass, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asx = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ast, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asy = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asu, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.asz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.asv, <8 x i32> %i.aab, <8 x float> splat (float -nan(0x3FFFFF)), i8 4) ; 2 uses
  %i.ata = shufflevector <8 x float> %i.asw, <8 x float> %i.asx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atb = shufflevector <8 x float> %i.asw, <8 x float> %i.asx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.atc = shufflevector <8 x float> %i.asy, <8 x float> %i.asz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.atd = shufflevector <8 x float> %i.asy, <8 x float> %i.asz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ate = shufflevector <8 x float> %i.ata, <8 x float> %i.atc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atf = shufflevector <8 x float> %i.atb, <8 x float> %i.atd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.atg = shufflevector <8 x float> %i.ata, <8 x float> %i.atc, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ath = shufflevector <8 x float> %i.atb, <8 x float> %i.atd, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.ati = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ate)
  store <8 x bfloat> %i.ati, ptr %.311991792.us.i, align 1, !tbaa !20
  %i.atj = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 16
  %i.atk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atf)
  store <8 x bfloat> %i.atk, ptr %i.atj, align 1, !tbaa !20
  %i.atl = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 32
  %i.atm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.atg)
  store <8 x bfloat> %i.atm, ptr %i.atl, align 1, !tbaa !20
  %i.atn = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 48
  %i.ato = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ath)
  store <8 x bfloat> %i.ato, ptr %i.atn, align 1, !tbaa !20
  %i.atp = getelementptr inbounds nuw i8, ptr %.311991792.us.i, i64 64 ; 3 uses
  %indvars.iv.next2294.i = add nuw nsw i64 %indvars.iv2293.i, 1 ; 2 uses
  %exitcond2297.not.i = icmp eq i64 %indvars.iv.next2294.i, %wide.trip.count2287.i
  br i1 %exitcond2297.not.i, label %._crit_edge1794.us.i, label %bb.be, !llvm.loop !55

._crit_edge1794.us.i:                             ; preds = %bb.be
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %.112171796.us.i, i64 %i.aak ; 2 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %.112141797.us.i, i64 %i.aak ; 2 uses
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %.112111798.us.i, i64 %i.aak ; 2 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %.112081799.us.i, i64 %i.aak ; 2 uses
  %i.atu = add nuw nsw i32 %.111921801.us.i, 8    ; 3 uses
  %i.atv = or disjoint i32 %i.atu, 7
  %i.atw = icmp slt i32 %i.atv, %2
  br i1 %i.atw, label %.preheader1570.us.i, label %.preheader1573.i, !llvm.loop !56

.preheader1573.i:                                 ; preds = %._crit_edge1794.us.i, %.preheader1570.preheader.i, %.preheader1574.thread.i, %.preheader1574.i
  %.11217.lcssa.i = phi ptr [ %.01216.lcssa.i, %.preheader1574.i ], [ %scevgep2274.i, %.preheader1574.thread.i ], [ %scevgep2289.i, %.preheader1570.preheader.i ], [ %i.atq, %._crit_edge1794.us.i ] ; 2 uses
  %.11214.lcssa.i = phi ptr [ %.01213.lcssa.i, %.preheader1574.i ], [ %scevgep2277.i, %.preheader1574.thread.i ], [ %scevgep2290.i, %.preheader1570.preheader.i ], [ %i.atr, %._crit_edge1794.us.i ]
  %.11211.lcssa.i = phi ptr [ %.01210.lcssa.i, %.preheader1574.i ], [ %scevgep2280.i, %.preheader1574.thread.i ], [ %scevgep2291.i, %.preheader1570.preheader.i ], [ %i.ats, %._crit_edge1794.us.i ]
  %.11208.lcssa.i = phi ptr [ %.01207.lcssa.i, %.preheader1574.i ], [ %scevgep2283.i, %.preheader1574.thread.i ], [ %scevgep2292.i, %.preheader1570.preheader.i ], [ %i.att, %._crit_edge1794.us.i ]
  %.21198.lcssa.i = phi ptr [ %.01196.lcssa.i, %.preheader1574.i ], [ %i.aqu, %.preheader1574.thread.i ], [ %.01196.lcssa25352544.i, %.preheader1570.preheader.i ], [ %i.atp, %._crit_edge1794.us.i ] ; 2 uses
  %.11192.lcssa.i = phi i32 [ %.01191.lcssa.i, %.preheader1574.i ], [ %i.abf, %.preheader1574.thread.i ], [ %i.asr, %.preheader1570.preheader.i ], [ %i.atu, %._crit_edge1794.us.i ] ; 3 uses
  %i.atx = or disjoint i32 %.11192.lcssa.i, 3
  %i.aty = icmp slt i32 %i.atx, %2
  br i1 %i.aty, label %.preheader1569.lr.ph.i, label %._crit_edge1824.i

.preheader1569.lr.ph.i:                           ; preds = %.preheader1573.i
  br i1 %i.aag, label %.preheader1569.us.i, label %._crit_edge1853.split.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1816.us.i
  %.211931823.us.i = phi i32 [ %i.avf, %._crit_edge1816.us.i ], [ %.11192.lcssa.i, %.preheader1569.lr.ph.i ]
  %.412001822.us.i = phi ptr [ %i.ava, %._crit_edge1816.us.i ], [ %.21198.lcssa.i, %.preheader1569.lr.ph.i ]
  %.212091821.us.i = phi ptr [ %i.ave, %._crit_edge1816.us.i ], [ %.11208.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212121820.us.i = phi ptr [ %i.avd, %._crit_edge1816.us.i ], [ %.11211.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212151819.us.i = phi ptr [ %i.avc, %._crit_edge1816.us.i ], [ %.11214.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  %.212181818.us.i = phi ptr [ %i.avb, %._crit_edge1816.us.i ], [ %.11217.lcssa.i, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.preheader1569.us.i
  %indvars.iv2300.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2301.i, %bb.bf ] ; 5 uses
  %.512011814.us.i = phi ptr [ %.412001822.us.i, %.preheader1569.us.i ], [ %i.ava, %bb.bf ] ; 3 uses
end_hunk_2
