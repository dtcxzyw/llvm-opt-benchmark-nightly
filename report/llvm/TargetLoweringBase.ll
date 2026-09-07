Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetLoweringBase?download=true
inline.NumInlined: 2991
inline.NumDeleted: 1105
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4llvm18TargetLoweringBase25computeRegisterPropertiesEPKNS_18TargetRegisterInfoE:iter.check
  br i1 %.not318, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread, label %bb.d

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread: ; preds = %bb.c, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit
  %.pre-phi = phi i64 [ %i.dw, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ], [ 0, %bb.c ]
  %i.dz = trunc i32 %.0107336 to i16              ; 2 uses
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv366
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !196
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv366
  store i16 %i.dz, ptr %i.eb, align 2, !tbaa !196
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.pre-phi
  store i8 1, ptr %i.ec, align 1, !tbaa !206
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread
  %.1 = phi i32 [ %.0107336, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread ], [ %i.du, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit ]
  %indvars.iv.next367 = add nsw i64 %indvars.iv366, -1 ; 2 uses
  %i.ed = and i64 %indvars.iv.next367, 4294967294
  %.not399 = icmp eq i64 %i.ed, 0
  br i1 %.not399, label %._crit_edge, label %bb.c, !llvm.loop !644

bb.e:                                             ; preds = %._crit_edge
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !190
  %.not297 = icmp eq ptr %i.ef, null
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 2788
  br i1 %.not297, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 2254
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !193
  %i.ej = shl i16 %i.ei, 1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2260
  store i16 %i.ej, ptr %i.ek, align 4, !tbaa !193
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2242
  %i.em = load i16, ptr %i.el, align 2, !tbaa !193
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2260
  store i16 %i.em, ptr %i.en, align 4, !tbaa !193
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !196
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink413 = phi i16 [ 15, %bb.f ], [ %i.ep, %bb.g ]
  %.sink411 = phi i16 [ 15, %bb.f ], [ 9, %bb.g ]
  %.sink409 = phi i8 [ 4, %bb.f ], [ 3, %bb.g ]
  store i16 %.sink413, ptr %i.eg, align 4, !tbaa !196
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 5692
  store i16 %.sink411, ptr %i.eq, align 4, !tbaa !196
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 502282
  store i8 %.sink409, ptr %i.er, align 2, !tbaa !206
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !190
  %.not298 = icmp eq ptr %i.et, null
  br i1 %.not298, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2242
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !193
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2258
  store i16 %i.ev, ptr %i.ew, align 2, !tbaa !193
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.ez = load i16, ptr %i.ex, align 2, !tbaa !196
  store i16 %i.ez, ptr %i.ey, align 2, !tbaa !196
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 5690
  store i16 9, ptr %i.fa, align 2, !tbaa !196
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 502281
  store i8 3, ptr %i.fb, align 1, !tbaa !206
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !190
  %.not299 = icmp eq ptr %i.fd, null
  br i1 %.not299, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2238
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !193
  %i.fg = mul i16 %i.ff, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i16 %i.fg, ptr %i.fh, align 8, !tbaa !193
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.fk = load i16, ptr %i.fi, align 2, !tbaa !196
  store i16 %i.fk, ptr %i.fj, align 8, !tbaa !196
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 5688
  store i16 7, ptr %i.fl, align 8, !tbaa !196
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 502280
  store i8 3, ptr %i.fm, align 8, !tbaa !206
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !190
  %.not300 = icmp eq ptr %i.fo, null
  br i1 %.not300, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.fq = load i16, ptr %i.fp, align 8, !tbaa !193
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2254
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !193
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.fu = load i16, ptr %i.fs, align 8, !tbaa !196
  store i16 %i.fu, ptr %i.ft, align 2, !tbaa !196
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 5686
  store i16 8, ptr %i.fv, align 2, !tbaa !196
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 502279
  store i8 3, ptr %i.fw, align 1, !tbaa !206
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !190
  %.not301 = icmp eq ptr %i.fy, null
  br i1 %.not301, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2238
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !193
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2252
  store i16 %i.ga, ptr %i.gb, align 4, !tbaa !193
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2780
  %i.ge = load i16, ptr %i.gc, align 2, !tbaa !196
  store i16 %i.ge, ptr %i.gd, align 4, !tbaa !196
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 5684
  store i16 7, ptr %i.gf, align 4, !tbaa !196
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 502278
  store i8 3, ptr %i.gg, align 2, !tbaa !206
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !190
  %.not302 = icmp eq ptr %i.gi, null
  br i1 %.not302, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gj = load ptr, ptr %0, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 168
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = tail call noundef zeroext i1 %i.gl(ptr noundef nonnull align 8 dereferenceable(518435) %0) #27 ; 2 uses
  %. = select i1 %i.gm, i64 2252, i64 2236
  %.416 = select i1 %i.gm, i64 2780, i64 2764
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %.416
  %.sink = load i16, ptr %i.go, align 4, !tbaa !196
  %.sink391 = load i16, ptr %i.gn, align 4, !tbaa !193
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 2250
  store i16 %.sink391, ptr %i.gp, align 2, !tbaa !193
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2778
  store i16 %.sink, ptr %i.gq, align 2, !tbaa !196
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 5682
  store i16 14, ptr %i.gr, align 2, !tbaa !196
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 502277
  store i8 8, ptr %i.gs, align 1, !tbaa !206
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !190
  %.not303 = icmp eq ptr %i.gu, null
  br i1 %.not303, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 2252
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !193
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 2248
  store i16 %i.gw, ptr %i.gx, align 8, !tbaa !193
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 2780
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 2776
  %i.ha = load i16, ptr %i.gy, align 4, !tbaa !196
  store i16 %i.ha, ptr %i.gz, align 8, !tbaa !196
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 5680
  store i16 14, ptr %i.hb, align 8, !tbaa !196
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 502276
  store i8 8, ptr %i.hc, align 4, !tbaa !206
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 502264 ; 8 uses
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit124

.preheader:                                       ; preds = %bb.bd
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 5392
  br label %bb.bf

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit124: ; preds = %bb.t, %bb.bd
  %indvars.iv377 = phi i64 [ 19, %bb.t ], [ %indvars.iv.next378, %bb.bd ] ; 31 uses
  %indvars.iv369 = phi i64 [ 20, %bb.t ], [ %indvars.iv.next370, %bb.bd ] ; 2 uses
  %i.hi = trunc i64 %indvars.iv377 to i16         ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv377
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !190
  %.not306 = icmp eq ptr %i.hk, null
  br i1 %.not306, label %bb.u, label %bb.bd

bb.u:                                             ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit124
  %i.hl = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %indvars.iv377
  %i.hm = getelementptr i8, ptr %i.hl, i64 -2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !196 ; 11 uses
  %i.ho = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %indvars.iv377
  %i.hp = getelementptr i8, ptr %i.ho, i64 -2
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !193 ; 13 uses
  %i.hr = add nsw i16 %i.hi, -163
  %spec.select.i.i = icmp ult i16 %i.hr, 53       ; 5 uses
  %.sroa.2.0.insert.shift.i.i = select i1 %spec.select.i.i, i64 4294967296, i64 0 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.hq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.hs = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.i to i40 ; 2 uses
  %i.ht = load ptr, ptr %0, align 8, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 160
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = call noundef zeroext i8 %i.hv(ptr noundef nonnull align 8 dereferenceable(518435) %0, i16 %i.hi) #27 ; 2 uses
  switch i8 %i.hw, label %bb.bc [
    i8 1, label %.preheader321
    i8 7, label %.loopexit
    i8 6, label %.thread290
    i8 5, label %.thread290
  ]

.preheader321:                                    ; preds = %bb.u
  %i.hx = select i1 %spec.select.i.i, i64 194, i64 104 ; 2 uses
  %.not122340.not = icmp samesign ult i64 %indvars.iv377, %i.hx
  br i1 %.not122340.not, label %.lr.ph342, label %.loopexit

.lr.ph342:                                        ; preds = %.preheader321
  %i.hy = zext i16 %i.hn to i64
  %i.hz = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.hy
  %i.ia = getelementptr i8, ptr %i.hz, i64 -16
  %.sroa.0.0.copyload.i.i125 = load i64, ptr %i.ia, align 16
  %.sroa.0206.4.extract.shift308 = lshr exact i64 %.sroa.2.0.insert.shift.i.i, 32
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph342, %.critedge
  %indvars.iv371 = phi i64 [ %indvars.iv369, %.lr.ph342 ], [ %indvars.iv.next372, %.critedge ] ; 6 uses
  %i.ib = trunc i64 %indvars.iv371 to i16         ; 6 uses
  %i.ic = add i16 %i.ib, -19
  %spec.select.i.i.i = icmp ult i16 %i.ic, 197
  br i1 %spec.select.i.i.i, label %bb.w, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

bb.w:                                             ; preds = %bb.v
  %i.id = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %indvars.iv371
  %i.ie = getelementptr i8, ptr %i.id, i64 -2
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !196
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit:        ; preds = %bb.v, %bb.w
  %.sroa.0.0.i.i = phi i16 [ %i.if, %bb.w ], [ %i.ib, %bb.v ]
  %i.ig = zext i16 %.sroa.0.0.i.i to i64
  %i.ih = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.ig
  %i.ii = getelementptr i8, ptr %i.ih, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ii, align 16
  %i.ij = icmp ugt i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i125
  br i1 %i.ij, label %bb.x, label %.critedge

bb.x:                                             ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit
  %i.ik = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %indvars.iv371
  %i.il = getelementptr i8, ptr %i.ik, i64 -2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !193
  %i.in = add i16 %i.ib, -163
  %spec.select.i.i126 = icmp ult i16 %i.in, 53
  %i.io = icmp ne i16 %i.im, %i.hq
  %i.ip = zext i1 %spec.select.i.i126 to i64
  %i.iq = icmp ne i64 %.sroa.0206.4.extract.shift308, %i.ip
  %.not311 = select i1 %i.io, i1 true, i1 %i.iq
  %.not.i130 = icmp eq i16 %i.ib, 0
  %or.cond = or i1 %.not.i130, %.not311
  br i1 %or.cond, label %.critedge, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit131

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit131: ; preds = %bb.x
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv371
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !190
  %.not312 = icmp eq ptr %i.is, null
  br i1 %.not312, label %.critedge, label %.thread

.thread:                                          ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit131
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv377
  store i16 %i.ib, ptr %i.it, align 2, !tbaa !196
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv377
  store i16 %i.ib, ptr %i.iu, align 2, !tbaa !196
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv377
  store i16 1, ptr %i.iv, align 2, !tbaa !193
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 1, ptr %i.iw, align 1, !tbaa !206
  br label %bb.bd

.critedge:                                        ; preds = %bb.x, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit131
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1
  %.not122.not = icmp samesign ult i64 %indvars.iv371, %i.hx
  br i1 %.not122.not, label %bb.v, label %.loopexit, !llvm.loop !645

.loopexit:                                        ; preds = %.critedge, %.preheader321, %bb.u
  %i.ix = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hq)
  %or.cond295 = icmp eq i16 %i.ix, 1
  br i1 %or.cond295, label %.preheader320, label %_ZN4llvm13isPowerOf2_32Ej.exit.thread

.preheader320:                                    ; preds = %.loopexit
  %i.iy = icmp samesign ult i64 %indvars.iv377, 215
  br i1 %i.iy, label %.lr.ph345, label %.thread290

.lr.ph345:                                        ; preds = %.preheader320, %.critedge3
  %indvars.iv379 = phi i64 [ %indvars.iv.next380, %.critedge3 ], [ %indvars.iv377, %.preheader320 ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 6 uses
  %i.iz = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %indvars.iv.next380
  %i.ja = getelementptr i8, ptr %i.iz, i64 -2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !196
  %i.jc = icmp eq i16 %i.jb, %i.hn
  br i1 %i.jc, label %bb.y, label %.critedge3

bb.y:                                             ; preds = %.lr.ph345
  %i.jd = trunc i64 %indvars.iv379 to i16
  %i.je = add i16 %i.jd, -162
  %spec.select.i132 = icmp ult i16 %i.je, 53
  %i.jf = xor i1 %spec.select.i.i, %spec.select.i132
  br i1 %i.jf, label %.critedge3, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jg = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %indvars.iv.next380
  %i.jh = getelementptr i8, ptr %i.jg, i64 -2
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !193
  %i.jj = icmp ugt i16 %i.ji, %i.hq
  br i1 %i.jj, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit138, label %.critedge3

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit138: ; preds = %bb.z
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next380
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !190
  %.not316 = icmp eq ptr %i.jl, null
  br i1 %.not316, label %.critedge3, label %.thread283

.thread283:                                       ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit138
  %i.jm = trunc nuw nsw i64 %indvars.iv.next380 to i16 ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv377
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !196
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv377
  store i16 %i.jm, ptr %i.jo, align 2, !tbaa !196
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv377
  store i16 1, ptr %i.jp, align 2, !tbaa !193
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 7, ptr %i.jq, align 1, !tbaa !206
  br label %bb.bd

.critedge3:                                       ; preds = %bb.z, %bb.y, %.lr.ph345, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit138
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, 215
  br i1 %exitcond383.not, label %.thread290, label %.lr.ph345, !llvm.loop !646

_ZN4llvm13isPowerOf2_32Ej.exit.thread:            ; preds = %.loopexit
  %.not.i.i139 = icmp eq i16 %i.hq, 0
  br i1 %.not.i.i139, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit142, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread
  %spec.select.i.i.i140 = icmp samesign ult i64 %indvars.iv377, 163
  %.sroa.0.0.extract.trunc.i = zext i16 %i.hq to i32
  %i.jr = add nsw i32 %.sroa.0.0.extract.trunc.i, -1
  %i.js = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.jr, i1 false)
  %i.jt = sub nuw nsw i32 32, %i.js
  %i.ju = shl nuw nsw i32 1, %i.jt                ; 2 uses
  br i1 %spec.select.i.i.i140, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jv = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.hn, i32 noundef %i.ju)
  br label %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.jw = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.hn, i32 noundef %i.ju)
  br label %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit

_ZNK4llvm3MVT17getPow2VectorTypeEv.exit:          ; preds = %bb.ab, %bb.ac
  %.sroa.03.0.i = phi i16 [ %i.jw, %bb.ac ], [ %i.jv, %bb.ab ] ; 2 uses
  %.not.i141 = icmp eq i16 %.sroa.03.0.i, 0
  br i1 %.not.i141, label %.thread290, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit142

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit142: ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.thread, %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit
  %.sroa.03.0.i287 = phi i16 [ %.sroa.03.0.i, %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit ], [ %i.hi, %_ZN4llvm13isPowerOf2_32Ej.exit.thread ] ; 3 uses
  %i.jx = zext i16 %.sroa.03.0.i287 to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !190
  %.not313 = icmp eq ptr %i.jz, null
  br i1 %.not313, label %.thread290, label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit142
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv377
  store i16 %.sroa.03.0.i287, ptr %i.ka, align 2, !tbaa !196
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 7, ptr %i.kb, align 1, !tbaa !206
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv377
  store i16 %.sroa.03.0.i287, ptr %i.kc, align 2, !tbaa !196
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv377
  store i16 1, ptr %i.kd, align 2, !tbaa !193
  br label %bb.bd

.thread290:                                       ; preds = %.critedge3, %.preheader320, %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit142, %bb.u, %bb.u
  br i1 %spec.select.i.i, label %_ZN4llvm13isPowerOf2_32Ej.exit.i, label %bb.ae

_ZN4llvm13isPowerOf2_32Ej.exit.i:                 ; preds = %.thread290
  %.not.i.i.i = icmp ne i16 %i.hq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ke = call range(i16 1, 17) i16 @llvm.ctpop.i16(i16 %i.hq)
  %i.kf = icmp samesign ult i16 %i.ke, 2
  call void @llvm.assume(i1 %i.kf)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm13isPowerOf2_32Ej.exit.i, %.thread290
  %.sroa.052.0.extract.trunc68.i = zext i16 %i.hq to i32 ; 2 uses
  %.not.i.i26.i = icmp ne i16 %i.hq, 0
  %i.kg = call range(i32 1, 17) i32 @llvm.ctpop.i32(i32 %.sroa.052.0.extract.trunc68.i)
  %i.kh = icmp samesign ult i32 %i.kg, 2
  %or.cond.i = select i1 %.not.i.i26.i, i1 %i.kh, i1 false ; 2 uses
  %.sroa.052.0.i = select i1 %or.cond.i, i40 %i.hs, i40 1 ; 2 uses
  %.025.i = select i1 %or.cond.i, i16 1, i16 %i.hq ; 2 uses
  %.sroa.052.0.extract.trunc7282.i = trunc i40 %.sroa.052.0.i to i32 ; 3 uses
  %i.ki = icmp samesign ugt i32 %.sroa.052.0.extract.trunc7282.i, 1
  br i1 %i.ki, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.ae, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i
  %.sroa.052.0.extract.trunc7285.i = phi i32 [ %i.kp, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i ], [ %.sroa.052.0.extract.trunc7282.i, %bb.ae ] ; 2 uses
  %.184.i = phi i16 [ %i.kr, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i ], [ %.025.i, %bb.ae ] ; 2 uses
  %.sroa.052.183.i = phi i40 [ %.sroa.0.0.insert.insert.i.i3181.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i ], [ %i.hs, %bb.ae ] ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i40 %.sroa.052.183.i to i32 ; 3 uses
  %i.kj = and i40 %.sroa.052.183.i, 4294967296
  %.not.i.i144 = icmp eq i40 %i.kj, 0
  br i1 %.not.i.i144, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.kk = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.hn, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

bb.ag:                                            ; preds = %.lr.ph.i
  %i.kl = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.hn, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i: ; preds = %bb.ag, %bb.af
  %.sroa.04.0.i.i = phi i16 [ %i.kk, %bb.af ], [ %i.kl, %bb.ag ] ; 2 uses
  %.not.i28.i = icmp eq i16 %.sroa.04.0.i.i, 0
  br i1 %.not.i28.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  %i.km = zext i16 %.sroa.04.0.i.i to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !190
  %.not.i145 = icmp eq ptr %i.ko, null
  br i1 %.not.i145, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i, label %.critedge.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit.i
  %i.kp = lshr i32 %.sroa.052.0.extract.trunc7285.i, 1 ; 3 uses
  %.sroa.052.4.extract.shift.i = and i40 %.sroa.052.183.i, -4294967296
  %i.kq = zext nneg i32 %i.kp to i40
  %.sroa.0.0.insert.insert.i.i3181.i = or disjoint i40 %.sroa.052.4.extract.shift.i, %i.kq ; 2 uses
  %i.kr = shl i16 %.184.i, 1                      ; 2 uses
  %i.ks = icmp samesign ugt i32 %.sroa.052.0.extract.trunc7285.i, 3
  br i1 %i.ks, label %.lr.ph.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread..critedge.loopexit_crit_edge.i, !llvm.loop !647

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread..critedge.loopexit_crit_edge.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread.i
  br label %.critedge.i, !llvm.loop !647

.critedge.i:                                      ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread..critedge.loopexit_crit_edge.i, %bb.ae
  %.sroa.0.0.extract.trunc.i32.pre-phi.i = phi i32 [ %.sroa.052.0.extract.trunc7282.i, %bb.ae ], [ %i.kp, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread..critedge.loopexit_crit_edge.i ], [ %.sroa.0.0.extract.trunc.i.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ] ; 2 uses
  %.sroa.052.1.lcssa.i = phi i40 [ %.sroa.052.0.i, %bb.ae ], [ %.sroa.0.0.insert.insert.i.i3181.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread..critedge.loopexit_crit_edge.i ], [ %.sroa.052.183.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ]
  %.1.lcssa.i = phi i16 [ %.025.i, %bb.ae ], [ %i.kr, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.thread..critedge.loopexit_crit_edge.i ], [ %.184.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit.i ] ; 3 uses
  %i.kt = and i40 %.sroa.052.1.lcssa.i, 4294967296
  %.not.i33.i = icmp eq i40 %i.kt, 0
  br i1 %.not.i33.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge.i
  %i.ku = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.hn, i32 noundef %.sroa.0.0.extract.trunc.i32.pre-phi.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit35.i

bb.ai:                                            ; preds = %.critedge.i
  %i.kv = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.hn, i32 noundef %.sroa.0.0.extract.trunc.i32.pre-phi.i)
  br label %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit35.i

_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit35.i: ; preds = %bb.ai, %bb.ah
  %.sroa.04.0.i34.i = phi i16 [ %i.ku, %bb.ah ], [ %i.kv, %bb.ai ] ; 3 uses
  %.not.i36.i = icmp eq i16 %.sroa.04.0.i34.i, 0
  br i1 %.not.i36.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.thread.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.i

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.i: ; preds = %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit35.i
  %i.kw = zext i16 %.sroa.04.0.i34.i to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !190
  %.not80.i = icmp eq ptr %i.ky, null
  br i1 %.not80.i, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.thread.i, label %bb.aj

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.thread.i: ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.i, %_ZN4llvm3MVT11getVectorVTES0_NS_12ElementCountE.exit35.i
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.thread.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.i
  %.sroa.046.0.i = phi i16 [ %.sroa.04.0.i34.i, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.i ], [ %i.hn, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit37.thread.i ] ; 7 uses
  %i.kz = add i16 %.sroa.046.0.i, -19
  %spec.select.i.i.i.i = icmp ult i16 %i.kz, 197
  br i1 %spec.select.i.i.i.i, label %bb.ak, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.la = zext nneg i16 %.sroa.046.0.i to i64
  %i.lb = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.la
  %i.lc = getelementptr i8, ptr %i.lb, i64 -2
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !196
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i:      ; preds = %bb.ak, %bb.aj
  %.sroa.0.0.i.i.i = phi i16 [ %i.ld, %bb.ak ], [ %.sroa.046.0.i, %bb.aj ]
  %i.le = zext i16 %.sroa.0.0.i.i.i to i64
  %i.lf = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.lg, align 16
  %i.lh = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 2 uses
  %i.li = icmp ult i32 %i.lh, 2
  br i1 %i.li, label %_ZN4llvm8bit_ceilIjEET_S1_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i
  %i.lj = add i32 %i.lh, -1
  %i.lk = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.lj, i1 false)
  %i.ll = sub nuw nsw i32 32, %i.lk
  %i.lm = shl nuw i32 1, %i.ll
  %i.ln = zext i32 %i.lm to i64
  br label %_ZN4llvm8bit_ceilIjEET_S1_.exit.i

_ZN4llvm8bit_ceilIjEET_S1_.exit.i:                ; preds = %bb.al, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i
  %.0.i.i = phi i64 [ %i.ln, %bb.al ], [ 1, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit.i ]
  %i.lo = zext i16 %.sroa.046.0.i to i64          ; 2 uses
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.lo
  %.sroa.01.0.copyload.i.i = load i16, ptr %i.lp, align 2, !tbaa !196 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i16 %.sroa.01.0.copyload.i.i, ptr %3, align 8, !tbaa !196
  store ptr null, ptr %i.he, align 8, !tbaa !207
  %.not.i.i.i.i = icmp eq i16 %.sroa.01.0.copyload.i.i, %.sroa.046.0.i
  br i1 %.not.i.i.i.i, label %_ZNK4llvm3EVT6bitsLTES0_.exit.thread.i, label %bb.am

_ZNK4llvm3EVT6bitsLTES0_.exit.thread.i:           ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZL25getVectorTypeBreakdownMVTN4llvm3MVTERS0_RjS1_PNS_18TargetLoweringBaseE.exit

bb.am:                                            ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i16 %.sroa.046.0.i, ptr %2, align 8
  store ptr null, ptr %i.hf, align 8
  %.not.i.i8.i.i = icmp eq i16 %.sroa.01.0.copyload.i.i, 0
  br i1 %.not.i.i8.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lq = zext i16 %.sroa.01.0.copyload.i.i to i64
  %i.lr = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.lq ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 -16
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ls, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.lr, i64 -8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %.fca.0.insert.i.i.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.lt = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i:        ; preds = %bb.ao, %bb.an
  %.pn.i.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i.i, %bb.an ], [ %i.lt, %bb.ao ] ; 2 uses
  %.not.i5.i.i.i = icmp eq i16 %.sroa.046.0.i, 0
  br i1 %.not.i5.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i
  %i.lu = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.lo ; 2 uses
  %i.lv = getelementptr i8, ptr %i.lu, i64 -16
  %.sroa.0.0.copyload.i.i6.i.i.i = load i64, ptr %i.lv, align 16
  %.sroa.2.0..sroa_idx.i.i7.i.i.i = getelementptr i8, ptr %i.lu, i64 -8
  %.sroa.2.0.copyload.i.i8.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i7.i.i.i, align 8
  %.fca.0.insert.i.i9.i.i.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i6.i.i.i, 0
  %.fca.1.insert.i.i10.i.i.i = insertvalue { i64, i8 } %.fca.0.insert.i.i9.i.i.i, i8 %.sroa.2.0.copyload.i.i8.i.i.i, 1
  br label %_ZNK4llvm3EVT6bitsLTES0_.exit.i

bb.aq:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i.i.i
  %i.lw = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  br label %_ZNK4llvm3EVT6bitsLTES0_.exit.i

_ZNK4llvm3EVT6bitsLTES0_.exit.i:                  ; preds = %bb.aq, %bb.ap
  %.pn.i11.i.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i10.i.i.i, %bb.ap ], [ %i.lw, %bb.aq ] ; 2 uses
  %.fca.1.extract2.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i, 1
  %.fca.0.extract1.i.i.i = extractvalue { i64, i8 } %.pn.i.i.i.i, 0
  %.fca.0.extract.i.i.i = extractvalue { i64, i8 } %.pn.i11.i.i.i, 0
  %.fca.1.extract.i.i.i = extractvalue { i64, i8 } %.pn.i11.i.i.i, 1
  %i.lx = trunc nuw i8 %.fca.1.extract2.i.i.i to i1
  %.not.i13.i.i.i = xor i1 %i.lx, true
  %i.ly = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %.not.i13.i.i.i, i1 true, i1 %i.ly
  %i.lz = icmp ult i64 %.fca.0.extract1.i.i.i, %.fca.0.extract.i.i.i
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.lz, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0.i.i.i.i, label %bb.ar, label %_ZL25getVectorTypeBreakdownMVTN4llvm3MVTERS0_RjS1_PNS_18TargetLoweringBaseE.exit

bb.ar:                                            ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit.i
  %i.ma = add i16 %.sroa.01.0.copyload.i.i, -19
  %spec.select.i.i.i39.i = icmp ult i16 %i.ma, 197
  br i1 %spec.select.i.i.i39.i, label %bb.as, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit42.i

bb.as:                                            ; preds = %bb.ar
  %i.mb = zext nneg i16 %.sroa.01.0.copyload.i.i to i64
  %i.mc = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -2
  %i.me = load i16, ptr %i.md, align 2, !tbaa !196
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit42.i

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit42.i:    ; preds = %bb.as, %bb.ar
  %.sroa.0.0.i.i40.i = phi i16 [ %i.me, %bb.as ], [ %.sroa.01.0.copyload.i.i, %bb.ar ]
  %i.mf = zext i16 %.sroa.0.0.i.i40.i to i64
  %i.mg = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.mf
  %i.mh = getelementptr i8, ptr %i.mg, i64 -16
  %.sroa.0.0.copyload.i.i41.i = load i64, ptr %i.mh, align 16
  %i.mi = udiv i64 %.0.i.i, %.sroa.0.0.copyload.i.i41.i
  %i.mj = trunc i64 %i.mi to i16
  %i.mk = mul i16 %.1.lcssa.i, %i.mj
  br label %_ZL25getVectorTypeBreakdownMVTN4llvm3MVTERS0_RjS1_PNS_18TargetLoweringBaseE.exit

_ZL25getVectorTypeBreakdownMVTN4llvm3MVTERS0_RjS1_PNS_18TargetLoweringBaseE.exit: ; preds = %_ZNK4llvm3EVT6bitsLTES0_.exit.thread.i, %_ZNK4llvm3EVT6bitsLTES0_.exit.i, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit42.i
  %.0.i = phi i16 [ %i.mk, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit42.i ], [ %.1.lcssa.i, %_ZNK4llvm3EVT6bitsLTES0_.exit.i ], [ %.1.lcssa.i, %_ZNK4llvm3EVT6bitsLTES0_.exit.thread.i ]
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv377
  store i16 %.0.i, ptr %i.ml, align 2, !tbaa !193
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv377
  store i16 %.sroa.01.0.copyload.i.i, ptr %i.mm, align 2, !tbaa !196
  %i.mn = call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.hq)
  %.not.i.i146 = icmp samesign ult i16 %i.mn, 2
  br i1 %.not.i.i146, label %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151.thread, label %bb.at

bb.at:                                            ; preds = %_ZL25getVectorTypeBreakdownMVTN4llvm3MVTERS0_RjS1_PNS_18TargetLoweringBaseE.exit
  %spec.select.i.i.i147 = icmp samesign ult i64 %indvars.iv377, 163
  %i.mo = add nsw i32 %.sroa.052.0.extract.trunc68.i, -1
  %i.mp = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mo, i1 false)
  %i.mq = sub nuw nsw i32 32, %i.mp
  %i.mr = shl nuw nsw i32 1, %i.mq                ; 2 uses
  br i1 %spec.select.i.i.i147, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ms = call i16 @_ZN4llvm3MVT19getScalableVectorVTES0_j(i16 %i.hn, i32 noundef %i.mr)
  br label %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151

bb.av:                                            ; preds = %bb.at
  %i.mt = call i16 @_ZN4llvm3MVT11getVectorVTES0_j(i16 %i.hn, i32 noundef %i.mr)
  br label %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151

_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151:       ; preds = %bb.au, %bb.av
  %.sroa.03.0.i150 = phi i16 [ %i.mt, %bb.av ], [ %i.ms, %bb.au ] ; 2 uses
  %i.mu = icmp eq i16 %.sroa.03.0.i150, %i.hi
  br i1 %i.mu, label %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151.thread, label %bb.bb

_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151.thread: ; preds = %_ZL25getVectorTypeBreakdownMVTN4llvm3MVTERS0_RjS1_PNS_18TargetLoweringBaseE.exit, %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv377
  store i16 1, ptr %i.mv, align 2, !tbaa !196
  switch i8 %i.hw, label %bb.ay [
    i8 5, label %bb.aw
    i8 6, label %bb.ax
  ]

bb.aw:                                            ; preds = %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151.thread
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 5, ptr %i.mw, align 1, !tbaa !206
  br label %bb.bd

bb.ax:                                            ; preds = %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151.thread
  %i.mx = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 6, ptr %i.mx, align 1, !tbaa !206
  br label %bb.bd

bb.ay:                                            ; preds = %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151.thread
  %i.my = icmp ugt i16 %i.hq, 1
  br i1 %i.my, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.mz = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 6, ptr %i.mz, align 1, !tbaa !206
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  %i.na = select i1 %spec.select.i.i, i8 9, i8 5
  %i.nb = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 %i.na, ptr %i.nb, align 1, !tbaa !206
  br label %bb.bd

bb.bb:                                            ; preds = %_ZNK4llvm3MVT17getPow2VectorTypeEv.exit151
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv377
  store i16 %.sroa.03.0.i150, ptr %i.nc, align 2, !tbaa !196
  %i.nd = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv377
  store i8 7, ptr %i.nd, align 1, !tbaa !206
  br label %bb.bd

bb.bc:                                            ; preds = %bb.u
  unreachable

bb.bd:                                            ; preds = %.thread, %.thread283, %bb.ad, %bb.aw, %bb.az, %bb.ba, %bb.ax, %bb.bb, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit124
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 2 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1
  %exitcond386.not = icmp eq i64 %indvars.iv.next378, 216
  br i1 %exitcond386.not, label %.preheader, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit124, !llvm.loop !648

bb.be:                                            ; preds = %bb.bf
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 0, ptr %i.ne, align 8, !tbaa !650
  br label %bb.bh

bb.bf:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv387 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next388, %bb.bf ] ; 4 uses
  %i.nf = trunc i64 %indvars.iv387 to i16
  %i.ng = load ptr, ptr %0, align 8, !tbaa !13
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 1288
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = call { ptr, i8 } %i.ni(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef %1, i16 %i.nf) #27 ; 2 uses
  %.fca.0.extract12 = extractvalue { ptr, i8 } %i.nj, 0
  %.fca.1.extract13 = extractvalue { ptr, i8 } %i.nj, 1
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv387
  store ptr %.fca.0.extract12, ptr %i.nk, align 8, !tbaa !190
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv387
  store i8 %.fca.1.extract13, ptr %i.nl, align 1, !tbaa !191
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %.not120 = icmp eq i64 %indvars.iv.next388, 264
  br i1 %.not120, label %bb.be, label %bb.bf, !llvm.loop !649

bb.bg:                                            ; preds = %.critedge5
  ret void

bb.bh:                                            ; preds = %.critedge5.1, %bb.be
  %i.nm = phi i32 [ 0, %bb.be ], [ %i.oc, %.critedge5.1 ] ; 4 uses
  %.sroa.0170.0349 = phi i64 [ 1, %bb.be ], [ %i.od, %.critedge5.1 ] ; 5 uses
  %i.nn = and i64 %.sroa.0170.0349, 65534
  %switch = icmp eq i64 %i.nn, 0
  br i1 %switch, label %.critedge5, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154: ; preds = %bb.bh
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.sroa.0170.0349
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !190
  %.not305 = icmp eq ptr %i.np, null
  br i1 %.not305, label %.critedge5, label %bb.bi

bb.bi:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154
  %i.nq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %.sroa.0170.0349
  %i.nr = getelementptr i8, ptr %i.nq, i64 -16
  %.sroa.0.0.copyload.i155 = load i64, ptr %i.nr, align 16 ; 2 uses
  %i.ns = zext i32 %i.nm to i64
  %.not121 = icmp ult i64 %.sroa.0.0.copyload.i155, %i.ns
  br i1 %.not121, label %.critedge5, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nt = trunc i64 %.sroa.0.0.copyload.i155 to i32 ; 2 uses
  store i32 %i.nt, ptr %i.ne, align 8, !tbaa !650
  br label %.critedge5

.critedge5:                                       ; preds = %bb.bh, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154, %bb.bj, %bb.bi
  %i.nu = phi i32 [ %i.nm, %bb.bh ], [ %i.nm, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154 ], [ %i.nt, %bb.bj ], [ %i.nm, %bb.bi ] ; 3 uses
  %i.nv = add nuw nsw i64 %.sroa.0170.0349, 1     ; 3 uses
  %.not304 = icmp eq i64 %i.nv, 264
  br i1 %.not304, label %bb.bg, label %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154.1

_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154.1: ; preds = %.critedge5
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !190
  %.not305.1 = icmp eq ptr %i.nx, null
  br i1 %.not305.1, label %.critedge5.1, label %bb.bk

bb.bk:                                            ; preds = %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154.1
  %i.ny = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.nv
  %i.nz = getelementptr i8, ptr %i.ny, i64 -16
  %.sroa.0.0.copyload.i155.1 = load i64, ptr %i.nz, align 16 ; 2 uses
  %i.oa = zext i32 %i.nu to i64
  %.not121.1 = icmp ult i64 %.sroa.0.0.copyload.i155.1, %i.oa
  br i1 %.not121.1, label %.critedge5.1, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ob = trunc i64 %.sroa.0.0.copyload.i155.1 to i32 ; 2 uses
  store i32 %i.ob, ptr %i.ne, align 8, !tbaa !650
  br label %.critedge5.1

.critedge5.1:                                     ; preds = %bb.bl, %bb.bk, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154.1
  %i.oc = phi i32 [ %i.nu, %bb.bk ], [ %i.nu, %_ZNK4llvm18TargetLoweringBase11isTypeLegalENS_3EVTE.exit154.1 ], [ %i.ob, %bb.bl ]
  %i.od = add nuw nsw i64 %.sroa.0170.0349, 2
  br label %bb.bh
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i16, ptr } @_ZNK4llvm18TargetLoweringBase18getSetCCResultTypeERKNS_10DataLayoutERNS_11LLVMContextENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i16 %3, ptr nofree readnone captures(none) %4) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i16 %i.c(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(912) %1, i32 noundef 0) #27
  %.fca.0.insert = insertvalue { i16, ptr } poison, i16 %i.d, 0
  %.fca.1.insert = insertvalue { i16, ptr } %.fca.0.insert, ptr null, 1
  ret { i16, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm18TargetLoweringBase22getVectorTypeBreakdownERNS_11LLVMContextENS_3EVTERS3_RjRNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %6) local_unnamed_addr #6 align 2 {
bb.a:
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  %8 = alloca %"struct.std::pair.98", align 8     ; 4 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 9 uses
  %.sroa.5 = alloca [23 x i8], align 1            ; 3 uses
  %10 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %11 = alloca %"struct.std::pair.98", align 8    ; 5 uses
  %12 = alloca %"struct.llvm::EVT", align 8       ; 9 uses
  %13 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  store i16 %2, ptr %9, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %3, ptr %i.a, align 8
  %.not.i = icmp eq i16 %2, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i16 %2 to i64
  %i.c = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -2
  %i.e = load i16, ptr %i.d, align 2, !tbaa !193
  %i.f = add i16 %2, -163
  %spec.select.i.i.i = icmp ult i16 %i.f, 53
  %.sroa.2.0.insert.shift.i.i.i = select i1 %spec.select.i.i.i, i64 4294967296, i64 0
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.e to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = call i64 @_ZNK4llvm3EVT29getExtendedVectorElementCountEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  br label %_ZNK4llvm3EVT21getVectorElementCountEv.exit

_ZNK4llvm3EVT21getVectorElementCountEv.exit:      ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %i.h = trunc i64 %.sroa.0.0.in.i to i40         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.98") align 8 %8, ptr noundef nonnull align 8 dereferenceable(518435) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 %2, ptr %3)
end_hunk_0
