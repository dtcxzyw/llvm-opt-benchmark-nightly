inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.ez = lshr i32 %i.n, 1
  %i.fa = and i32 %i.ez, 1
  %i.fb = and i32 %i.n, 1
  %i.fc = add nuw nsw i32 %i.fb, 1
  %i.fd = add nuw nsw i32 %i.fc, %i.fa
  %i.fe = lshr i32 %i.m, 1
  %i.ff = and i32 %i.fe, 1
  %i.fg = and i32 %i.m, 1
  %i.fh = add nuw nsw i32 %i.fg, 1
  %i.fi = add nuw nsw i32 %i.fh, %i.ff
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ey, i32 noundef %i.fd, i32 noundef %i.fi, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ae:                                            ; preds = %bb.ac
  %i.fj = icmp sgt i32 %i.n, 1
  br i1 %i.fj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fk = shl nsw i32 %i.j, 3
  %i.fl = and i32 %i.n, 1
  %i.fm = add nuw nsw i32 %i.fl, 1
  %i.fn = lshr i32 %i.m, 1
  %i.fo = and i32 %i.fn, 1
  %i.fp = and i32 %i.m, 1
  %i.fq = add nuw nsw i32 %i.fp, 1
  %i.fr = add nuw nsw i32 %i.fq, %i.fo
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.fk, i32 noundef %i.fm, i32 noundef %i.fr, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ag:                                            ; preds = %bb.ae
  %i.fs = shl nsw i32 %i.j, 2
  %i.ft = lshr i32 %i.m, 1
  %i.fu = and i32 %i.ft, 1
  %i.fv = and i32 %i.m, 1
  %i.fw = add nuw nsw i32 %i.fv, 1
  %i.fx = add nuw nsw i32 %i.fw, %i.fu
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.fs, i32 noundef %i.n, i32 noundef %i.fx, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ah:                                            ; preds = %bb.x
  %i.fy = icmp sgt i32 %i.m, 1
  %i.fz = icmp sgt i32 %i.n, 15                   ; 2 uses
  br i1 %i.fy, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ga = shl nsw i32 %i.j, 5
  %i.gb = lshr i32 %i.n, 4
  %i.gc = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.gd = shufflevector <4 x i32> %i.gc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ge = lshr <4 x i32> %i.gd, <i32 0, i32 3, i32 2, i32 1>
  %i.gf = and <4 x i32> %i.ge, splat (i32 1)
  %i.gg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gf)
  %op.rdx504 = add nuw nsw i32 %i.gg, %i.gb
  %i.gh = and i32 %i.m, 1
  %i.gi = add nuw nsw i32 %i.gh, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ga, i32 noundef %op.rdx504, i32 noundef %i.gi, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ak:                                            ; preds = %bb.ai
  %i.gj = icmp sgt i32 %i.n, 7
  br i1 %i.gj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gk = shl nsw i32 %i.j, 4
  %i.gl = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.n, i64 0
  %i.gm = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = lshr <4 x i32> %i.gm, <i32 0, i32 2, i32 1, i32 0>
  %i.go = and <4 x i32> %i.gn, splat (i32 1)
  %i.gp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.go)
  %i.gq = and i32 %i.m, 1
  %i.gr = add nuw nsw i32 %i.gq, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.gk, i32 noundef %i.gp, i32 noundef %i.gr, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.am:                                            ; preds = %bb.ak
  %i.gs = icmp sgt i32 %i.n, 3
  br i1 %i.gs, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gt = shl nsw i32 %i.j, 3
  %i.gu = lshr i32 %i.n, 1
  %i.gv = and i32 %i.gu, 1
  %i.gw = and i32 %i.n, 1
  %i.gx = add nuw nsw i32 %i.gw, 1
  %i.gy = add nuw nsw i32 %i.gx, %i.gv
  %i.gz = and i32 %i.m, 1
  %i.ha = add nuw nsw i32 %i.gz, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.gt, i32 noundef %i.gy, i32 noundef %i.ha, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ao:                                            ; preds = %bb.am
  %i.hb = icmp sgt i32 %i.n, 1
  br i1 %i.hb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.hc = shl nsw i32 %i.j, 2
  %i.hd = and i32 %i.n, 1
  %i.he = add nuw nsw i32 %i.hd, 1
  %i.hf = and i32 %i.m, 1
  %i.hg = add nuw nsw i32 %i.hf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.hc, i32 noundef %i.he, i32 noundef %i.hg, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.aq:                                            ; preds = %bb.ao
  %i.hh = shl nsw i32 %i.j, 1
  %i.hi = and i32 %i.m, 1
  %i.hj = add nuw nsw i32 %i.hi, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.hh, i32 noundef %i.n, i32 noundef %i.hj, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ar:                                            ; preds = %bb.ah
  br i1 %i.fz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hk = shl nsw i32 %i.j, 4
  %i.hl = lshr i32 %i.n, 4
  %i.hm = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.hn = shufflevector <4 x i32> %i.hm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ho = lshr <4 x i32> %i.hn, <i32 0, i32 3, i32 2, i32 1>
  %i.hp = and <4 x i32> %i.ho, splat (i32 1)
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hp)
  %op.rdx505 = add nuw nsw i32 %i.hq, %i.hl
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.hk, i32 noundef %op.rdx505, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.at:                                            ; preds = %bb.ar
  %i.hr = icmp sgt i32 %i.n, 7
  br i1 %i.hr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hs = shl nsw i32 %i.j, 3
  %i.ht = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.n, i64 0
  %i.hu = shufflevector <4 x i32> %i.ht, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hv = lshr <4 x i32> %i.hu, <i32 0, i32 2, i32 1, i32 0>
  %i.hw = and <4 x i32> %i.hv, splat (i32 1)
  %i.hx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hw)
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.hs, i32 noundef %i.hx, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.av:                                            ; preds = %bb.at
  %i.hy = icmp sgt i32 %i.n, 3
  br i1 %i.hy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hz = shl nsw i32 %i.j, 2
  %i.ia = lshr i32 %i.n, 1
  %i.ib = and i32 %i.ia, 1
  %i.ic = and i32 %i.n, 1
  %i.id = add nuw nsw i32 %i.ic, 1
  %i.ie = add nuw nsw i32 %i.id, %i.ib
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.hz, i32 noundef %i.ie, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.ax:                                            ; preds = %bb.av
  %i.if = icmp sgt i32 %i.n, 1
  br i1 %i.if, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ig = shl nsw i32 %i.j, 1
  %i.ih = and i32 %i.n, 1
  %i.ii = add nuw nsw i32 %i.ih, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ig, i32 noundef %i.ii, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

bb.az:                                            ; preds = %bb.ax
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader1582.i

_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i:                ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f
  %i.ij = mul i32 %i.n, %i.j                      ; 17 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.im = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.in = shufflevector <16 x i32> %i.im, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.io = mul <16 x i32> %i.in, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 17 uses
  %i.ip = icmp sgt i32 %i.j, 0                    ; 4 uses
  %i.iq = shl i32 %i.j, 4
  %i.ir = sext i32 %i.iq to i64                   ; 17 uses
  %i.is = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %i.it = shufflevector <16 x i32> %i.is, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.iu = mul <16 x i32> %i.it, %i.io             ; 39 uses
  %i.iv = sext i32 %i.j to i64                    ; 21 uses
  %i.iw = shl i32 %i.j, 3
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = shl i32 %i.j, 2
  %i.iz = sext i32 %i.iy to i64
  %i.ja = shl i32 %i.j, 1
  %i.jb = sext i32 %i.ja to i64
  %i.jc = icmp slt i32 %i.j, 1
  %i.jd = add i32 %i.n, -16                       ; 2 uses
  %i.je = lshr i32 %i.jd, 2
  %i.jf = and i32 %i.je, 1073741820
  %narrow.i = add nuw nsw i32 %i.jf, 4
  %i.jg = zext nneg i32 %narrow.i to i64
  %i.jh = mul nsw i64 %i.jg, %i.ir
  %i.ji = shl i32 %i.ij, 4
  %i.jj = and i32 %i.jd, -16
  %i.jk = add nuw nsw i32 %i.jj, 16               ; 4 uses
  %i.jl = add i32 %i.n, -8
  %i.jm = zext nneg i32 %i.m to i64
  %i.jn = or disjoint i32 %i.jk, 7
  %i.jo = icmp slt i32 %i.jn, %i.n
  %wide.trip.count.i = zext i32 %i.j to i64       ; 9 uses
  %i.jp = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.jq = icmp eq i64 %i.jp, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod583 = trunc i32 %i.j to i1
  %xtraiter585 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.jr = icmp ult i64 %i.jp, 3
  %unroll_iter589 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod586.not = icmp eq i64 %xtraiter585, 0
  %lcmp.mod588 = icmp ne i64 %xtraiter585, 0
  %xtraiter592 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.js = icmp ult i64 %i.jp, 7
  %unroll_iter597 = and i64 %wide.trip.count.i, 2147483640
  %lcmp.mod594.not = icmp eq i64 %xtraiter592, 0
  %lcmp.mod596 = icmp ne i64 %xtraiter592, 0
  br label %_ZN4ncnn3MatD2Ev.exit1328.i

.preheader1582.loopexit.i:                        ; preds = %._crit_edge1669.split.i
  %i.jt = trunc nuw nsw i64 %indvars.iv.next2202.i to i32
  br label %.preheader1582.i

.preheader1582.i:                                 ; preds = %.preheader1582.loopexit.i, %bb.az, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ag, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.w, %bb.v, %bb.t, %bb.r, %bb.p
  %.0.lcssa.i = phi i32 [ %i.jt, %.preheader1582.loopexit.i ], [ 0, %bb.r ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.t ], [ 0, %bb.p ], [ 0, %bb.al ], [ 0, %bb.ap ], [ 0, %bb.aq ], [ 0, %bb.an ], [ 0, %bb.aj ], [ 0, %bb.au ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %bb.aw ], [ 0, %bb.as ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ab ] ; 5 uses
  %i.ju = or disjoint i32 %.0.lcssa.i, 7
  %i.jv = icmp slt i32 %i.ju, %i.m
  br i1 %i.jv, label %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i, label %.preheader1573.i

_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i:                ; preds = %.preheader1582.i
  %i.jw = mul i32 %i.n, %i.j                      ; 10 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jz = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.ka = shufflevector <8 x i32> %i.jz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kb = mul <8 x i32> %i.ka, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.kc = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.kd = shufflevector <16 x i32> %i.kc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ke = mul <16 x i32> %i.kd, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 8 uses
  %i.kf = icmp sgt i32 %i.n, 15
  %i.kg = icmp sgt i32 %i.j, 0                    ; 4 uses
  %i.kh = shl i32 %i.j, 4
  %i.ki = sext i32 %i.kh to i64                   ; 9 uses
  %i.kj = shl i32 %i.j, 3
  %i.kk = sext i32 %i.kj to i64                   ; 9 uses
  %i.kl = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %i.km = shufflevector <8 x i32> %i.kl, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kn = mul <8 x i32> %i.km, %i.kb              ; 31 uses
  %i.ko = sext i32 %i.j to i64                    ; 14 uses
  %i.kp = shl i32 %i.j, 2
  %i.kq = sext i32 %i.kp to i64
  %i.kr = shl i32 %i.j, 1
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp slt i32 %i.j, 1
  %i.ku = add i32 %i.n, -16                       ; 2 uses
  %i.kv = lshr i32 %i.ku, 2
  %i.kw = and i32 %i.kv, 1073741820
  %narrow2438.i = add nuw nsw i32 %i.kw, 4
  %i.kx = zext nneg i32 %narrow2438.i to i64
  %i.ky = mul nsw i64 %i.kx, %i.ki
  %i.kz = mul i32 %i.jw, %.0.lcssa.i
  %i.la = shl i32 %i.jw, 3
  %i.lb = and i32 %i.ku, -16
  %i.lc = add nuw nsw i32 %i.lb, 16               ; 4 uses
  %i.ld = add i32 %i.n, -8
  %i.le = zext nneg i32 %.0.lcssa.i to i64
  %i.lf = add i32 %.0.lcssa.i, 7
  %i.lg = sext i32 %i.m to i64
  %i.lh = or disjoint i32 %i.lc, 7
  %i.li = icmp slt i32 %i.lh, %i.n
  %wide.trip.count2233.i = zext i32 %i.j to i64   ; 9 uses
  %invariant.op.i = add nsw i64 %i.lg, -7
  %i.lj = add nsw i64 %wide.trip.count2233.i, -1  ; 3 uses
  %xtraiter600 = and i64 %wide.trip.count2233.i, 1
  %i.lk = icmp eq i64 %i.lj, 0
  %unroll_iter605 = and i64 %wide.trip.count2233.i, 2147483646
  %lcmp.mod602.not = icmp eq i64 %xtraiter600, 0
  %lcmp.mod604 = trunc i32 %i.j to i1
  %xtraiter608 = and i64 %wide.trip.count2233.i, 3 ; 3 uses
  %i.ll = icmp ult i64 %i.lj, 3
  %unroll_iter613 = and i64 %wide.trip.count2233.i, 2147483644
  %lcmp.mod610.not = icmp eq i64 %xtraiter608, 0
  %lcmp.mod612 = icmp ne i64 %xtraiter608, 0
  %xtraiter616 = and i64 %wide.trip.count2233.i, 7 ; 3 uses
  %i.lm = icmp ult i64 %i.lj, 7
  %unroll_iter621 = and i64 %wide.trip.count2233.i, 2147483640
  %lcmp.mod618.not = icmp eq i64 %xtraiter616, 0
  %lcmp.mod620 = icmp ne i64 %xtraiter616, 0
  br label %_ZN4ncnn3MatD2Ev.exit1327.i

_ZN4ncnn3MatD2Ev.exit1328.i:                      ; preds = %._crit_edge1669.split.i, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i
  %indvars.iv2201.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %indvars.iv.next2202.i, %._crit_edge1669.split.i ] ; 3 uses
  %indvars.iv.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1328.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge1669.split.i ] ; 2 uses
  %i.ln = sext i32 %indvars.iv.i to i64
  %i.lo = shl nsw i64 %i.ln, 2
  %i.lp = load ptr, ptr %i.o, align 8, !tbaa !18  ; 17 uses
  %i.lq = trunc i64 %indvars.iv2201.i to i32      ; 16 uses
  %i.lr = mul i32 %i.ij, %i.lq
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.ls ; 2 uses
  %i.lu = lshr exact i64 %indvars.iv2201.i, 4
  %i.lv = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !46
  %i.lw = load i64, ptr %i.ik, align 8, !tbaa !20, !noalias !46
  %i.lx = mul i64 %i.lw, %i.lu
  %i.ly = load i64, ptr %i.il, align 8, !tbaa !49, !noalias !46
  %i.lz = mul i64 %i.lx, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lz ; 4 uses
  br i1 %i.r, label %.preheader1587.lr.ph.i, label %._crit_edge1611.i

.preheader1587.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1328.i
  br i1 %i.ip, label %.preheader1587.us.preheader.i, label %._crit_edge1611.thread.i

.preheader1587.us.preheader.i:                    ; preds = %.preheader1587.lr.ph.i
  %i.mb = or disjoint i32 %i.lq, 1
  %i.mc = mul i32 %i.mb, %i.ij
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.md
  %i.mf = or disjoint i32 %i.lq, 2
  %i.mg = mul i32 %i.mf, %i.ij
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.mh
  %i.mj = or disjoint i32 %i.lq, 3
  %i.mk = mul i32 %i.mj, %i.ij
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.ml
  %i.mn = or disjoint i32 %i.lq, 4
  %i.mo = mul i32 %i.mn, %i.ij
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.mp
  %i.mr = or disjoint i32 %i.lq, 5
  %i.ms = mul i32 %i.mr, %i.ij
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.mt
  %i.mv = or disjoint i32 %i.lq, 6
  %i.mw = mul i32 %i.mv, %i.ij
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.mx
  %i.mz = or disjoint i32 %i.lq, 7
  %i.na = mul i32 %i.mz, %i.ij
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nb
  %i.nd = or disjoint i32 %i.lq, 8
  %i.ne = mul i32 %i.nd, %i.ij
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nf
  %i.nh = or disjoint i32 %i.lq, 9
  %i.ni = mul i32 %i.nh, %i.ij
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nj
  %i.nl = or disjoint i32 %i.lq, 10
  %i.nm = mul i32 %i.nl, %i.ij
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nn
  %i.np = or disjoint i32 %i.lq, 11
  %i.nq = mul i32 %i.np, %i.ij
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nr
  %i.nt = or disjoint i32 %i.lq, 12
  %i.nu = mul i32 %i.nt, %i.ij
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nv
  %i.nx = or disjoint i32 %i.lq, 13
  %i.ny = mul i32 %i.nx, %i.ij
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.nz
  %i.ob = or disjoint i32 %i.lq, 14
  %i.oc = mul i32 %i.ob, %i.ij
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.od
  %i.of = or disjoint i32 %i.lq, 15
  %i.og = mul i32 %i.of, %i.ij
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.oh
  br label %.preheader1587.us.i

.preheader1587.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1587.us.preheader.i
  %.011211610.us.i = phi ptr [ %i.sr, %._crit_edge.us.i ], [ %i.lt, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011251609.us.i = phi ptr [ %i.ss, %._crit_edge.us.i ], [ %i.me, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011271608.us.i = phi ptr [ %i.st, %._crit_edge.us.i ], [ %i.mi, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011281607.us.i = phi ptr [ %i.su, %._crit_edge.us.i ], [ %i.mm, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011301606.us.i = phi ptr [ %i.sv, %._crit_edge.us.i ], [ %i.mq, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011311605.us.i = phi ptr [ %i.sw, %._crit_edge.us.i ], [ %i.mu, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011471604.us.i = phi ptr [ %i.sx, %._crit_edge.us.i ], [ %i.my, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011481603.us.i = phi ptr [ %i.sy, %._crit_edge.us.i ], [ %i.nc, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011541602.us.i = phi ptr [ %i.sz, %._crit_edge.us.i ], [ %i.ng, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011551601.us.i = phi ptr [ %i.ta, %._crit_edge.us.i ], [ %i.nk, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011561600.us.i = phi ptr [ %i.tb, %._crit_edge.us.i ], [ %i.no, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011571599.us.i = phi ptr [ %i.tc, %._crit_edge.us.i ], [ %i.ns, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011591598.us.i = phi ptr [ %i.td, %._crit_edge.us.i ], [ %i.nw, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011601597.us.i = phi ptr [ %i.te, %._crit_edge.us.i ], [ %i.oa, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011611596.us.i = phi ptr [ %i.tf, %._crit_edge.us.i ], [ %i.oe, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011621595.us.i = phi ptr [ %i.tg, %._crit_edge.us.i ], [ %i.oi, %.preheader1587.us.preheader.i ] ; 2 uses
  %.011641594.us.i = phi ptr [ %i.sq, %._crit_edge.us.i ], [ %i.ma, %.preheader1587.us.preheader.i ]
  %.011751593.us.i = phi i32 [ %i.th, %._crit_edge.us.i ], [ 0, %.preheader1587.us.preheader.i ]
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.preheader1587.us.i
  %indvars.iv2171.i = phi i64 [ 0, %.preheader1587.us.i ], [ %indvars.iv.next2172.i, %bb.ba ] ; 17 uses
  %.111651592.us.i = phi ptr [ %.011641594.us.i, %.preheader1587.us.i ], [ %i.sq, %bb.ba ] ; 17 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.011211610.us.i, i64 %indvars.iv2171.i
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.011251609.us.i, i64 %indvars.iv2171.i
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.011271608.us.i, i64 %indvars.iv2171.i
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.011281607.us.i, i64 %indvars.iv2171.i
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.011301606.us.i, i64 %indvars.iv2171.i
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.011311605.us.i, i64 %indvars.iv2171.i
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.011471604.us.i, i64 %indvars.iv2171.i
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.011481603.us.i, i64 %indvars.iv2171.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.011541602.us.i, i64 %indvars.iv2171.i
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.011551601.us.i, i64 %indvars.iv2171.i
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.011561600.us.i, i64 %indvars.iv2171.i
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %.011571599.us.i, i64 %indvars.iv2171.i
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.011591598.us.i, i64 %indvars.iv2171.i
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.011601597.us.i, i64 %indvars.iv2171.i
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.011611596.us.i, i64 %indvars.iv2171.i
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.011621595.us.i, i64 %indvars.iv2171.i
  %i.oz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oj, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ok, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ol, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.om, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.on, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oo, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.op, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oq, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ph = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.or, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.os, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ot, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ou, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ov, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ow, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ox, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.po = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oy, <16 x i32> %i.io, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pp = shufflevector <16 x float> %i.oz, <16 x float> %i.pa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.oz, <16 x float> %i.pa, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.pb, <16 x float> %i.pc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.pb, <16 x float> %i.pc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.pd, <16 x float> %i.pe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.pd, <16 x float> %i.pe, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.pf, <16 x float> %i.pg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.pf, <16 x float> %i.pg, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.px = shufflevector <16 x float> %i.ph, <16 x float> %i.pi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.py = shufflevector <16 x float> %i.ph, <16 x float> %i.pi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.pj, <16 x float> %i.pk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.pj, <16 x float> %i.pk, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pl, <16 x float> %i.pm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pl, <16 x float> %i.pm, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pn, <16 x float> %i.po, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pn, <16 x float> %i.po, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pp, <16 x float> %i.pr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.pp, <16 x float> %i.pr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pt, <16 x float> %i.pv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.pt, <16 x float> %i.pv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.px, <16 x float> %i.pz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qo = shufflevector <16 x float> %i.px, <16 x float> %i.pz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qp = shufflevector <16 x float> %i.py, <16 x float> %i.qa, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qq = shufflevector <16 x float> %i.py, <16 x float> %i.qa, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qr = shufflevector <16 x float> %i.qb, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qs = shufflevector <16 x float> %i.qb, <16 x float> %i.qd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qt = shufflevector <16 x float> %i.qc, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qu = shufflevector <16 x float> %i.qc, <16 x float> %i.qe, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qv = shufflevector <16 x float> %i.qf, <16 x float> %i.qj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.xh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xf, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xh, ptr %i.xg, align 64, !tbaa !50
  %i.xi = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 384
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2190.i
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 12 ; 2 uses
  %i.xl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xk, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xl, ptr %i.xi, align 64, !tbaa !50
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.iv
  %i.xn = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 448
  %i.xo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xm, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xo, ptr %i.xn, align 64, !tbaa !50
  %i.xp = getelementptr inbounds nuw i8, ptr %.911731653.us.i, i64 512 ; 3 uses
  %indvars.iv.next2191.i.3 = add nuw nsw i64 %indvars.iv2190.i, 4 ; 2 uses
  %niter590.next.3 = add i64 %niter590, 4         ; 2 uses
  %niter590.ncmp.3 = icmp eq i64 %niter590.next.3, %unroll_iter589
  br i1 %niter590.ncmp.3, label %._crit_edge.us1660.i.unr-lcssa, label %.preheader1584.us.i.new, !llvm.loop !58

._crit_edge.us1660.i.unr-lcssa:                   ; preds = %.preheader1584.us.i.new
  br i1 %lcmp.mod586.not, label %._crit_edge.us1660.i, label %.epil.preheader584

.epil.preheader584:                               ; preds = %._crit_edge.us1660.i.unr-lcssa, %.preheader1584.us.i
  %indvars.iv2190.i.epil.init = phi i64 [ 0, %.preheader1584.us.i ], [ %indvars.iv.next2191.i.3, %._crit_edge.us1660.i.unr-lcssa ]
  %.911731653.us.i.epil.init = phi ptr [ %.811721655.us.i, %.preheader1584.us.i ], [ %i.xp, %._crit_edge.us1660.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod588)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.epil.preheader584
  %indvars.iv2190.i.epil = phi i64 [ %indvars.iv2190.i.epil.init, %.epil.preheader584 ], [ %indvars.iv.next2191.i.epil, %bb.bc ] ; 2 uses
  %.911731653.us.i.epil = phi ptr [ %.911731653.us.i.epil.init, %.epil.preheader584 ], [ %i.xv, %bb.bc ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader584 ], [ %epil.iter.next, %bb.bc ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %indvars.iv2190.i.epil ; 2 uses
  %i.xr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.xq, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xr, ptr %.911731653.us.i.epil, align 64, !tbaa !50
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.iv
  %i.xt = getelementptr inbounds nuw i8, ptr %.911731653.us.i.epil, i64 64
  %i.xu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.xs, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.xu, ptr %i.xt, align 64, !tbaa !50
  %i.xv = getelementptr inbounds nuw i8, ptr %.911731653.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2191.i.epil = add nuw nsw i64 %indvars.iv2190.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter585
  br i1 %epil.iter.cmp.not, label %._crit_edge.us1660.i, label %bb.bc, !llvm.loop !59

._crit_edge.us1660.i:                             ; preds = %bb.bc, %._crit_edge.us1660.i.unr-lcssa
  %.lcssa578 = phi ptr [ %i.xp, %._crit_edge.us1660.i.unr-lcssa ], [ %i.xv, %bb.bc ] ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.311241656.us.i, i64 %i.jb ; 2 uses
  %i.xx = add nuw nsw i32 %.311781654.us.i, 2     ; 3 uses
  %i.xy = or disjoint i32 %i.xx, 1
  %i.xz = icmp slt i32 %i.xy, %i.n
  br i1 %i.xz, label %.preheader1584.us.i, label %.preheader1588.i, !llvm.loop !61

.preheader1588.i:                                 ; preds = %._crit_edge.us1660.i, %.preheader1589.i
  %.31178.lcssa.i = phi i32 [ %.21177.lcssa.i, %.preheader1589.i ], [ %i.xx, %._crit_edge.us1660.i ] ; 2 uses
  %.81172.lcssa.i = phi ptr [ %.51169.lcssa.i, %.preheader1589.i ], [ %.lcssa578, %._crit_edge.us1660.i ]
  %.31124.lcssa.i = phi ptr [ %.21123.lcssa.i, %.preheader1589.i ], [ %i.xw, %._crit_edge.us1660.i ] ; 9 uses
  %i.ya = icmp sge i32 %.31178.lcssa.i, %i.n
  %brmerge.i = or i1 %i.jc, %i.ya
  br i1 %brmerge.i, label %._crit_edge1669.split.i, label %.preheader1583.i

.preheader1583.i:                                 ; preds = %.preheader1588.i, %._crit_edge.i
  %.111668.i = phi ptr [ %.lcssa581, %._crit_edge.i ], [ %.81172.lcssa.i, %.preheader1588.i ] ; 2 uses
  %.411791667.i = phi i32 [ %i.ye, %._crit_edge.i ], [ %.31178.lcssa.i, %.preheader1588.i ]
  br i1 %i.js, label %.epil.preheader591, label %.preheader1583.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1583.i.new
  br i1 %lcmp.mod594.not, label %._crit_edge.i, label %.epil.preheader591

.epil.preheader591:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1583.i
  %indvars.iv2195.i.epil.init = phi i64 [ 0, %.preheader1583.i ], [ %indvars.iv.next2196.i.7, %._crit_edge.i.unr-lcssa ]
  %.121666.i.epil.init = phi ptr [ %.111668.i, %.preheader1583.i ], [ %i.zj, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod596)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.epil.preheader591
  %indvars.iv2195.i.epil = phi i64 [ %indvars.iv2195.i.epil.init, %.epil.preheader591 ], [ %indvars.iv.next2196.i.epil, %bb.bd ] ; 2 uses
  %.121666.i.epil = phi ptr [ %.121666.i.epil.init, %.epil.preheader591 ], [ %i.yd, %bb.bd ] ; 2 uses
  %epil.iter593 = phi i64 [ 0, %.epil.preheader591 ], [ %epil.iter593.next, %bb.bd ]
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i.epil
  %i.yc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yb, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yc, ptr %.121666.i.epil, align 64, !tbaa !50
  %i.yd = getelementptr inbounds nuw i8, ptr %.121666.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2196.i.epil = add nuw nsw i64 %indvars.iv2195.i.epil, 1
  %epil.iter593.next = add i64 %epil.iter593, 1   ; 2 uses
  %epil.iter593.cmp.not = icmp eq i64 %epil.iter593.next, %xtraiter592
  br i1 %epil.iter593.cmp.not, label %._crit_edge.i, label %bb.bd, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.bd, %._crit_edge.i.unr-lcssa
  %.lcssa581 = phi ptr [ %i.zj, %._crit_edge.i.unr-lcssa ], [ %i.yd, %bb.bd ]
  %i.ye = add nuw nsw i32 %.411791667.i, 1        ; 2 uses
  %exitcond2200.not.i = icmp eq i32 %i.ye, %i.n
  br i1 %exitcond2200.not.i, label %._crit_edge1669.split.i, label %.preheader1583.i, !llvm.loop !63

.preheader1583.i.new:                             ; preds = %.preheader1583.i, %.preheader1583.i.new
  %indvars.iv2195.i = phi i64 [ %indvars.iv.next2196.i.7, %.preheader1583.i.new ], [ 0, %.preheader1583.i ] ; 9 uses
  %.121666.i = phi ptr [ %i.zj, %.preheader1583.i.new ], [ %.111668.i, %.preheader1583.i ] ; 9 uses
  %niter598 = phi i64 [ %niter598.next.7, %.preheader1583.i.new ], [ 0, %.preheader1583.i ]
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.yg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.yf, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yg, ptr %.121666.i, align 64, !tbaa !50
  %i.yh = getelementptr inbounds nuw i8, ptr %.121666.i, i64 64
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.yk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yj, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yk, ptr %i.yh, align 64, !tbaa !50
  %i.yl = getelementptr inbounds nuw i8, ptr %.121666.i, i64 128
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yo = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yn, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yo, ptr %i.yl, align 64, !tbaa !50
  %i.yp = getelementptr inbounds nuw i8, ptr %.121666.i, i64 192
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 12
  %i.ys = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yr, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.ys, ptr %i.yp, align 64, !tbaa !50
  %i.yt = getelementptr inbounds nuw i8, ptr %.121666.i, i64 256
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %i.yw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yv, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.yw, ptr %i.yt, align 64, !tbaa !50
  %i.yx = getelementptr inbounds nuw i8, ptr %.121666.i, i64 320
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 20
  %i.za = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.yz, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.za, ptr %i.yx, align 64, !tbaa !50
  %i.zb = getelementptr inbounds nuw i8, ptr %.121666.i, i64 384
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.ze = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zd, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.ze, ptr %i.zb, align 64, !tbaa !50
  %i.zf = getelementptr inbounds nuw i8, ptr %.121666.i, i64 448
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.31124.lcssa.i, i64 %indvars.iv2195.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 28
  %i.zi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zh, <16 x i32> %i.iu, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.zi, ptr %i.zf, align 64, !tbaa !50
  %i.zj = getelementptr inbounds nuw i8, ptr %.121666.i, i64 512 ; 3 uses
  %indvars.iv.next2196.i.7 = add nuw nsw i64 %indvars.iv2195.i, 8 ; 2 uses
  %niter598.next.7 = add i64 %niter598, 8         ; 2 uses
  %niter598.ncmp.7 = icmp eq i64 %niter598.next.7, %unroll_iter597
  br i1 %niter598.ncmp.7, label %._crit_edge.i.unr-lcssa, label %.preheader1583.i.new, !llvm.loop !64

._crit_edge1669.split.i:                          ; preds = %._crit_edge.i, %.preheader1588.i, %.preheader1584.lr.ph.i, %.preheader1585.lr.ph.i
  %indvars.iv.next2202.i = add nuw nsw i64 %indvars.iv2201.i, 16 ; 3 uses
  %i.zk = or disjoint i64 %indvars.iv.next2202.i, 15
  %i.zl = icmp samesign ult i64 %i.zk, %i.jm
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.ji
  br i1 %i.zl, label %_ZN4ncnn3MatD2Ev.exit1328.i, label %.preheader1582.loopexit.i, !llvm.loop !65

.preheader1573.loopexit.i:                        ; preds = %._crit_edge1765.split.i
  %i.zm = trunc nuw nsw i64 %indvars.iv.next2265.i to i32
  br label %.preheader1573.i

.preheader1573.i:                                 ; preds = %.preheader1573.loopexit.i, %.preheader1582.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1582.i ], [ %i.zm, %.preheader1573.loopexit.i ] ; 4 uses
  %i.zn = or disjoint i32 %.1.lcssa.i, 3          ; 2 uses
  %i.zo = icmp slt i32 %i.zn, %i.m
  br i1 %i.zo, label %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i, label %.preheader1564.i

_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i:                ; preds = %.preheader1573.i
  %i.zp = insertelement <2 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.zq = shufflevector <2 x i32> %i.zp, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.zr = or disjoint <4 x i32> %i.zq, <i32 0, i32 0, i32 0, i32 3>
  %i.zs = mul i32 %i.n, %i.j                      ; 6 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.zv = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.zw = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zx = mul <4 x i32> %i.zw, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.zy = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.zz = shufflevector <8 x i32> %i.zy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aaa = mul <8 x i32> %i.zz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aab = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.aac = shufflevector <16 x i32> %i.aab, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aad = mul <16 x i32> %i.aac, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aae = icmp sgt i32 %i.n, 15
  %i.aaf = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.aag = shl i32 %i.j, 4
  %i.aah = sext i32 %i.aag to i64                 ; 5 uses
  %i.aai = shl i32 %i.j, 3
  %i.aaj = sext i32 %i.aai to i64                 ; 5 uses
  %i.aak = shl i32 %i.j, 2
  %i.aal = sext i32 %i.aak to i64                 ; 4 uses
  %i.aam = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %i.aan = shufflevector <4 x i32> %i.aam, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aao = mul <4 x i32> %i.aan, %i.zx            ; 19 uses
  %i.aap = sext i32 %i.j to i64                   ; 5 uses
  %i.aaq = shl i32 %i.j, 1
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = icmp slt i32 %i.j, 1
  %i.aat = add i32 %i.n, -16                      ; 2 uses
  %i.aau = lshr i32 %i.aat, 2
  %i.aav = and i32 %i.aau, 1073741820
  %narrow2440.i = add nuw nsw i32 %i.aav, 4
  %i.aaw = zext nneg i32 %narrow2440.i to i64
  %i.aax = mul nsw i64 %i.aaw, %i.aah
  %i.aay = shl i32 %i.zs, 2
  %i.aaz = add nuw <4 x i32> %i.zr, <i32 0, i32 1, i32 2, i32 0>
  %i.aba = insertelement <4 x i32> poison, i32 %i.zs, i64 0
  %i.abb = shufflevector <4 x i32> %i.aba, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abc = mul <4 x i32> %i.abb, %i.aaz
  %i.abd = and i32 %i.aat, -16
  %i.abe = add nuw nsw i32 %i.abd, 16             ; 4 uses
  %i.abf = add i32 %i.n, -8
  %i.abg = zext nneg i32 %.1.lcssa.i to i64
  %i.abh = sext i32 %i.m to i64
  %i.abi = or disjoint i32 %i.abe, 7
  %i.abj = icmp slt i32 %i.abi, %i.n
  %wide.trip.count2285.i = zext i32 %i.j to i64   ; 8 uses
  %i.abk = insertelement <4 x i32> poison, i32 %i.aay, i64 0
  %i.abl = shufflevector <4 x i32> %i.abk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abm = add nsw i64 %wide.trip.count2285.i, -1 ; 2 uses
  %xtraiter624 = and i64 %wide.trip.count2285.i, 3 ; 3 uses
  %i.abn = icmp ult i64 %i.abm, 3
  %unroll_iter629 = and i64 %wide.trip.count2285.i, 2147483644
  %lcmp.mod626.not = icmp eq i64 %xtraiter624, 0
  %lcmp.mod628 = icmp ne i64 %xtraiter624, 0
  %xtraiter632 = and i64 %wide.trip.count2285.i, 7 ; 3 uses
  %i.abo = icmp ult i64 %i.abm, 7
  %unroll_iter637 = and i64 %wide.trip.count2285.i, 2147483640
  %lcmp.mod634.not = icmp eq i64 %xtraiter632, 0
  %lcmp.mod636 = icmp ne i64 %xtraiter632, 0
  br label %_ZN4ncnn3MatD2Ev.exit1326.i

_ZN4ncnn3MatD2Ev.exit1327.i:                      ; preds = %._crit_edge1765.split.i, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i
  %indvars.iv2264.i = phi i64 [ %i.le, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2265.i, %._crit_edge1765.split.i ] ; 2 uses
  %indvars.iv2262.i = phi i32 [ %i.lf, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2263.i, %._crit_edge1765.split.i ] ; 2 uses
  %indvars.iv2205.i = phi i32 [ %i.kz, %_ZN4ncnn3MatD2Ev.exit1327.lr.ph.i ], [ %indvars.iv.next2206.i, %._crit_edge1765.split.i ] ; 2 uses
  %i.abp = sext i32 %indvars.iv2205.i to i64
  %i.abq = shl nsw i64 %i.abp, 2
  %i.abr = load ptr, ptr %i.o, align 8, !tbaa !18 ; 9 uses
  %i.abs = trunc nuw i64 %indvars.iv2264.i to i32 ; 9 uses
  %i.abt = mul i32 %i.jw, %i.abs
  %i.abu = sext i32 %i.abt to i64
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.abu ; 2 uses
  %i.abw = add i32 %i.abs, 1
  %i.abx = mul i32 %i.abw, %i.jw
  %i.aby = sext i32 %i.abx to i64
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.aby ; 2 uses
  %i.aca = add i32 %i.abs, 2
  %i.acb = mul i32 %i.aca, %i.jw
  %i.acc = sext i32 %i.acb to i64
  %i.acd = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acc ; 2 uses
  %i.ace = add i32 %i.abs, 3
  %i.acf = mul i32 %i.ace, %i.jw
  %i.acg = sext i32 %i.acf to i64
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acg ; 2 uses
  %i.aci = add i32 %i.abs, 4
  %i.acj = mul i32 %i.aci, %i.jw
  %i.ack = sext i32 %i.acj to i64
  %i.acl = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.ack ; 2 uses
  %i.acm = add i32 %i.abs, 5
  %i.acn = mul i32 %i.acm, %i.jw
  %i.aco = sext i32 %i.acn to i64
  %i.acp = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.aco ; 2 uses
  %i.acq = add i32 %i.abs, 6
  %i.acr = mul i32 %i.acq, %i.jw
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acs ; 2 uses
  %i.acu = mul i32 %indvars.iv2262.i, %i.jw
  %i.acv = sext i32 %i.acu to i64
  %i.acw = getelementptr inbounds [4 x i8], ptr %i.abr, i64 %i.acv ; 2 uses
  %i.acx = lshr i32 %i.abs, 4
  %i.acy = lshr i32 %i.abs, 3
  %i.acz = and i32 %i.acy, 1
  %i.ada = add nuw nsw i32 %i.acz, %i.acx
  %i.adb = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !66
  %i.adc = load i64, ptr %i.jx, align 8, !tbaa !20, !noalias !66
  %i.add = zext nneg i32 %i.ada to i64
  %i.ade = mul i64 %i.adc, %i.add
  %i.adf = load i64, ptr %i.jy, align 8, !tbaa !49, !noalias !66
  %i.adg = mul i64 %i.ade, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.adg ; 4 uses
  br i1 %i.kf, label %.preheader1578.lr.ph.i, label %.preheader1581.i

.preheader1578.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1327.i
  br i1 %i.kg, label %.preheader1578.us.i, label %.preheader1581.thread.i

.preheader1578.us.i:                              ; preds = %.preheader1578.lr.ph.i, %._crit_edge1674.us.i
  %.012201685.us.i = phi ptr [ %i.afm, %._crit_edge1674.us.i ], [ %i.abv, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012241684.us.i = phi ptr [ %i.afn, %._crit_edge1674.us.i ], [ %i.abz, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012261683.us.i = phi ptr [ %i.afo, %._crit_edge1674.us.i ], [ %i.acd, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012281682.us.i = phi ptr [ %i.afp, %._crit_edge1674.us.i ], [ %i.ach, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012311681.us.i = phi ptr [ %i.afq, %._crit_edge1674.us.i ], [ %i.acl, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012331680.us.i = phi ptr [ %i.afr, %._crit_edge1674.us.i ], [ %i.acp, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012351679.us.i = phi ptr [ %i.afs, %._crit_edge1674.us.i ], [ %i.act, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012371678.us.i = phi ptr [ %i.aft, %._crit_edge1674.us.i ], [ %i.acw, %.preheader1578.lr.ph.i ] ; 2 uses
  %.012401677.us.i = phi ptr [ %i.afl, %._crit_edge1674.us.i ], [ %i.adh, %.preheader1578.lr.ph.i ]
  %.012521676.us.i = phi i32 [ %i.afu, %._crit_edge1674.us.i ], [ 0, %.preheader1578.lr.ph.i ]
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.preheader1578.us.i
  %indvars.iv2230.i = phi i64 [ 0, %.preheader1578.us.i ], [ %indvars.iv.next2231.i, %bb.be ] ; 9 uses
  %.112411673.us.i = phi ptr [ %.012401677.us.i, %.preheader1578.us.i ], [ %i.afl, %bb.be ] ; 9 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.012201685.us.i, i64 %indvars.iv2230.i
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.012241684.us.i, i64 %indvars.iv2230.i
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.012261683.us.i, i64 %indvars.iv2230.i
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.012281682.us.i, i64 %indvars.iv2230.i
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %.012311681.us.i, i64 %indvars.iv2230.i
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.012331680.us.i, i64 %indvars.iv2230.i
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %.012351679.us.i, i64 %indvars.iv2230.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.012371678.us.i, i64 %indvars.iv2230.i
  %i.adq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adi, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adj, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ads = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adk, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adl, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adu = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adm, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adn, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ado, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.adx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adp, <16 x i32> %i.ke, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ady = shufflevector <16 x float> %i.adq, <16 x float> %i.adr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.adz = shufflevector <16 x float> %i.adq, <16 x float> %i.adr, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aea = shufflevector <16 x float> %i.ads, <16 x float> %i.adt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aeb = shufflevector <16 x float> %i.ads, <16 x float> %i.adt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aec = shufflevector <16 x float> %i.adu, <16 x float> %i.adv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aed = shufflevector <16 x float> %i.adu, <16 x float> %i.adv, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aee = shufflevector <16 x float> %i.adw, <16 x float> %i.adx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.aef = shufflevector <16 x float> %i.adw, <16 x float> %i.adx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aeg = shufflevector <16 x float> %i.ady, <16 x float> %i.aea, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aeh = shufflevector <16 x float> %i.ady, <16 x float> %i.aea, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aei = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aej = shufflevector <16 x float> %i.adz, <16 x float> %i.aeb, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aek = shufflevector <16 x float> %i.aec, <16 x float> %i.aee, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ael = shufflevector <16 x float> %i.aec, <16 x float> %i.aee, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aem = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.aen = shufflevector <16 x float> %i.aed, <16 x float> %i.aef, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.aeo = shufflevector <16 x float> %i.aeg, <16 x float> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aep = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aeq = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aer = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aes = shufflevector <16 x float> %i.aeg, <16 x float> %i.aek, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aet = shufflevector <16 x float> %i.aeh, <16 x float> %i.ael, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aeu = shufflevector <16 x float> %i.aei, <16 x float> %i.aem, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aev = shufflevector <16 x float> %i.aej, <16 x float> %i.aen, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aew = shufflevector <16 x float> %i.aeo, <16 x float> %i.aep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aex = shufflevector <16 x float> %i.aeq, <16 x float> %i.aer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aey = shufflevector <16 x float> %i.aes, <16 x float> %i.aet, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.aez = shufflevector <16 x float> %i.aeu, <16 x float> %i.aev, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.afa = shufflevector <16 x float> %i.aeo, <16 x float> %i.aep, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afb = shufflevector <16 x float> %i.aeq, <16 x float> %i.aer, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afc = shufflevector <16 x float> %i.aes, <16 x float> %i.aet, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.afd = shufflevector <16 x float> %i.aeu, <16 x float> %i.aev, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.aew, ptr %.112411673.us.i, align 1, !tbaa !50
  %i.afe = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 64
  store <16 x float> %i.aex, ptr %i.afe, align 1, !tbaa !50
  %i.aff = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 128
  store <16 x float> %i.aey, ptr %i.aff, align 1, !tbaa !50
  %i.afg = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 192
  store <16 x float> %i.aez, ptr %i.afg, align 1, !tbaa !50
  %i.afh = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 256
  store <16 x float> %i.afa, ptr %i.afh, align 1, !tbaa !50
  %i.afi = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 320
  store <16 x float> %i.afb, ptr %i.afi, align 1, !tbaa !50
  %i.afj = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 384
  store <16 x float> %i.afc, ptr %i.afj, align 1, !tbaa !50
  %i.afk = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 448
  store <16 x float> %i.afd, ptr %i.afk, align 1, !tbaa !50
  %i.afl = getelementptr inbounds nuw i8, ptr %.112411673.us.i, i64 512 ; 3 uses
  %indvars.iv.next2231.i = add nuw nsw i64 %indvars.iv2230.i, 1 ; 2 uses
  %exitcond2234.not.i = icmp eq i64 %indvars.iv.next2231.i, %wide.trip.count2233.i
  br i1 %exitcond2234.not.i, label %._crit_edge1674.us.i, label %bb.be, !llvm.loop !69

._crit_edge1674.us.i:                             ; preds = %bb.be
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.012201685.us.i, i64 %i.ki ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %.012241684.us.i, i64 %i.ki ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %.012261683.us.i, i64 %i.ki ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.012281682.us.i, i64 %i.ki ; 2 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %.012311681.us.i, i64 %i.ki ; 2 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %.012331680.us.i, i64 %i.ki ; 2 uses
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %.012351679.us.i, i64 %i.ki ; 2 uses
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %.012371678.us.i, i64 %i.ki ; 2 uses
  %i.afu = add nuw nsw i32 %.012521676.us.i, 16   ; 2 uses
  %i.afv = or disjoint i32 %i.afu, 15
  %i.afw = icmp slt i32 %i.afv, %i.n
  br i1 %i.afw, label %.preheader1578.us.i, label %.preheader1581.i, !llvm.loop !70

.preheader1581.i:                                 ; preds = %._crit_edge1674.us.i, %_ZN4ncnn3MatD2Ev.exit1327.i
  %.01252.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.lc, %._crit_edge1674.us.i ] ; 4 uses
  %.01240.lcssa.i = phi ptr [ %i.adh, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afl, %._crit_edge1674.us.i ] ; 3 uses
  %.01237.lcssa.i = phi ptr [ %i.acw, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.aft, %._crit_edge1674.us.i ]
  %.01235.lcssa.i = phi ptr [ %i.act, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afs, %._crit_edge1674.us.i ]
  %.01233.lcssa.i = phi ptr [ %i.acp, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afr, %._crit_edge1674.us.i ]
  %.01231.lcssa.i = phi ptr [ %i.acl, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afq, %._crit_edge1674.us.i ]
  %.01228.lcssa.i = phi ptr [ %i.ach, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afp, %._crit_edge1674.us.i ]
  %.01226.lcssa.i = phi ptr [ %i.acd, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afo, %._crit_edge1674.us.i ]
  %.01224.lcssa.i = phi ptr [ %i.abz, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afn, %._crit_edge1674.us.i ]
  %.01220.lcssa.i = phi ptr [ %i.abv, %_ZN4ncnn3MatD2Ev.exit1327.i ], [ %i.afm, %._crit_edge1674.us.i ] ; 3 uses
  %i.afx = or disjoint i32 %.01252.lcssa.i, 7
  %i.afy = icmp slt i32 %i.afx, %i.n
  br i1 %i.afy, label %.preheader1577.lr.ph.i, label %._crit_edge1720.i

.preheader1581.thread.i:                          ; preds = %.preheader1578.lr.ph.i
  %scevgep2204.i = getelementptr i8, ptr %i.abr, i64 %i.ky
  %scevgep2207.i = getelementptr i8, ptr %scevgep2204.i, i64 %i.abq ; 2 uses
  br i1 %i.li, label %.preheader1577.preheader.i, label %._crit_edge1720.i

.preheader1577.lr.ph.i:                           ; preds = %.preheader1581.i
  br i1 %i.kg, label %.preheader1577.us.i, label %.preheader1577.preheader.i

.preheader1577.preheader.i:                       ; preds = %.preheader1577.lr.ph.i, %.preheader1581.thread.i
  %.01252.lcssa24842506.i = phi i32 [ %.01252.lcssa.i, %.preheader1577.lr.ph.i ], [ %i.lc, %.preheader1581.thread.i ] ; 2 uses
  %.01240.lcssa24852505.i = phi ptr [ %.01240.lcssa.i, %.preheader1577.lr.ph.i ], [ %i.adh, %.preheader1581.thread.i ]
  %.01220.lcssa24932504.i = phi ptr [ %.01220.lcssa.i, %.preheader1577.lr.ph.i ], [ %scevgep2207.i, %.preheader1581.thread.i ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  store <8 x float> %i.aks, ptr %i.akr, align 32, !tbaa !50
  %i.akt = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 128
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %indvars.iv2251.i
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 8 ; 2 uses
  %i.akw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akv, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.akw, ptr %i.akt, align 32, !tbaa !50
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.akv, i64 %i.ko
  %i.aky = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 160
  %i.akz = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.akx, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.akz, ptr %i.aky, align 32, !tbaa !50
  %i.ala = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 192
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %indvars.iv2251.i
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 12 ; 2 uses
  %i.ald = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.alc, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ald, ptr %i.ala, align 32, !tbaa !50
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.ko
  %i.alf = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 224
  %i.alg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ale, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alg, ptr %i.alf, align 32, !tbaa !50
  %i.alh = getelementptr inbounds nuw i8, ptr %.812481747.us.i, i64 256 ; 3 uses
  %indvars.iv.next2252.i.3 = add nuw nsw i64 %indvars.iv2251.i, 4 ; 2 uses
  %niter614.next.3 = add i64 %niter614, 4         ; 2 uses
  %niter614.ncmp.3 = icmp eq i64 %niter614.next.3, %unroll_iter613
  br i1 %niter614.ncmp.3, label %._crit_edge1748.us.i.unr-lcssa, label %.preheader1575.us.i.new, !llvm.loop !75

._crit_edge1748.us.i.unr-lcssa:                   ; preds = %.preheader1575.us.i.new
  br i1 %lcmp.mod610.not, label %._crit_edge1748.us.i, label %.epil.preheader607

.epil.preheader607:                               ; preds = %._crit_edge1748.us.i.unr-lcssa, %.preheader1575.us.i
  %indvars.iv2251.i.epil.init = phi i64 [ 0, %.preheader1575.us.i ], [ %indvars.iv.next2252.i.3, %._crit_edge1748.us.i.unr-lcssa ]
  %.812481747.us.i.epil.init = phi ptr [ %.712471751.us.i, %.preheader1575.us.i ], [ %i.alh, %._crit_edge1748.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod612)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.epil.preheader607
  %indvars.iv2251.i.epil = phi i64 [ %indvars.iv2251.i.epil.init, %.epil.preheader607 ], [ %indvars.iv.next2252.i.epil, %bb.bg ] ; 2 uses
  %.812481747.us.i.epil = phi ptr [ %.812481747.us.i.epil.init, %.epil.preheader607 ], [ %i.aln, %bb.bg ] ; 3 uses
  %epil.iter609 = phi i64 [ 0, %.epil.preheader607 ], [ %epil.iter609.next, %bb.bg ]
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %indvars.iv2251.i.epil ; 2 uses
  %i.alj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.ali, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alj, ptr %.812481747.us.i.epil, align 32, !tbaa !50
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %i.ali, i64 %i.ko
  %i.all = getelementptr inbounds nuw i8, ptr %.812481747.us.i.epil, i64 32
  %i.alm = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alk, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alm, ptr %i.all, align 32, !tbaa !50
  %i.aln = getelementptr inbounds nuw i8, ptr %.812481747.us.i.epil, i64 64 ; 2 uses
  %indvars.iv.next2252.i.epil = add nuw nsw i64 %indvars.iv2251.i.epil, 1
  %epil.iter609.next = add i64 %epil.iter609, 1   ; 2 uses
  %epil.iter609.cmp.not = icmp eq i64 %epil.iter609.next, %xtraiter608
  br i1 %epil.iter609.cmp.not, label %._crit_edge1748.us.i, label %bb.bg, !llvm.loop !76

._crit_edge1748.us.i:                             ; preds = %bb.bg, %._crit_edge1748.us.i.unr-lcssa
  %.lcssa566 = phi ptr [ %i.alh, %._crit_edge1748.us.i.unr-lcssa ], [ %i.aln, %bb.bg ] ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %.312231752.us.i, i64 %i.ks ; 2 uses
  %i.alp = add nuw nsw i32 %.312551750.us.i, 2    ; 3 uses
  %i.alq = or disjoint i32 %i.alp, 1
  %i.alr = icmp slt i32 %i.alq, %i.n
  br i1 %i.alr, label %.preheader1575.us.i, label %.preheader1579.i, !llvm.loop !77

.preheader1579.i:                                 ; preds = %._crit_edge1748.us.i, %.preheader1580.i
  %.31255.lcssa.i = phi i32 [ %.21254.lcssa.i, %.preheader1580.i ], [ %i.alp, %._crit_edge1748.us.i ] ; 2 uses
  %.71247.lcssa.i = phi ptr [ %.41244.lcssa.i, %.preheader1580.i ], [ %.lcssa566, %._crit_edge1748.us.i ]
  %.31223.lcssa.i = phi ptr [ %.21222.lcssa.i, %.preheader1580.i ], [ %i.alo, %._crit_edge1748.us.i ] ; 9 uses
  %i.als = icmp sge i32 %.31255.lcssa.i, %i.n
  %brmerge1998.i = or i1 %i.kt, %i.als
  br i1 %brmerge1998.i, label %._crit_edge1765.split.i, label %.preheader1574.i

.preheader1574.i:                                 ; preds = %.preheader1579.i, %._crit_edge1761.i
  %.1012501764.i = phi ptr [ %.lcssa569, %._crit_edge1761.i ], [ %.71247.lcssa.i, %.preheader1579.i ] ; 2 uses
  %.412561763.i = phi i32 [ %i.alw, %._crit_edge1761.i ], [ %.31255.lcssa.i, %.preheader1579.i ]
  br i1 %i.lm, label %.epil.preheader615, label %.preheader1574.i.new

._crit_edge1761.i.unr-lcssa:                      ; preds = %.preheader1574.i.new
  br i1 %lcmp.mod618.not, label %._crit_edge1761.i, label %.epil.preheader615

.epil.preheader615:                               ; preds = %._crit_edge1761.i.unr-lcssa, %.preheader1574.i
  %indvars.iv2256.i.epil.init = phi i64 [ 0, %.preheader1574.i ], [ %indvars.iv.next2257.i.7, %._crit_edge1761.i.unr-lcssa ]
  %.1112511760.i.epil.init = phi ptr [ %.1012501764.i, %.preheader1574.i ], [ %i.anb, %._crit_edge1761.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod620)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader615
  %indvars.iv2256.i.epil = phi i64 [ %indvars.iv2256.i.epil.init, %.epil.preheader615 ], [ %indvars.iv.next2257.i.epil, %bb.bh ] ; 2 uses
  %.1112511760.i.epil = phi ptr [ %.1112511760.i.epil.init, %.epil.preheader615 ], [ %i.alv, %bb.bh ] ; 2 uses
  %epil.iter617 = phi i64 [ 0, %.epil.preheader615 ], [ %epil.iter617.next, %bb.bh ]
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i.epil
  %i.alu = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alt, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.alu, ptr %.1112511760.i.epil, align 32, !tbaa !50
  %i.alv = getelementptr inbounds nuw i8, ptr %.1112511760.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2257.i.epil = add nuw nsw i64 %indvars.iv2256.i.epil, 1
  %epil.iter617.next = add i64 %epil.iter617, 1   ; 2 uses
  %epil.iter617.cmp.not = icmp eq i64 %epil.iter617.next, %xtraiter616
  br i1 %epil.iter617.cmp.not, label %._crit_edge1761.i, label %bb.bh, !llvm.loop !78

._crit_edge1761.i:                                ; preds = %bb.bh, %._crit_edge1761.i.unr-lcssa
  %.lcssa569 = phi ptr [ %i.anb, %._crit_edge1761.i.unr-lcssa ], [ %i.alv, %bb.bh ]
  %i.alw = add nuw nsw i32 %.412561763.i, 1       ; 2 uses
  %exitcond2261.not.i = icmp eq i32 %i.alw, %i.n
  br i1 %exitcond2261.not.i, label %._crit_edge1765.split.i, label %.preheader1574.i, !llvm.loop !79

.preheader1574.i.new:                             ; preds = %.preheader1574.i, %.preheader1574.i.new
  %indvars.iv2256.i = phi i64 [ %indvars.iv.next2257.i.7, %.preheader1574.i.new ], [ 0, %.preheader1574.i ] ; 9 uses
  %.1112511760.i = phi ptr [ %i.anb, %.preheader1574.i.new ], [ %.1012501764.i, %.preheader1574.i ] ; 9 uses
  %niter622 = phi i64 [ %niter622.next.7, %.preheader1574.i.new ], [ 0, %.preheader1574.i ]
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.aly = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.alx, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.aly, ptr %.1112511760.i, align 32, !tbaa !50
  %i.alz = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 32
  %i.ama = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 4
  %i.amc = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amb, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amc, ptr %i.alz, align 32, !tbaa !50
  %i.amd = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 64
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amg = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amf, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amg, ptr %i.amd, align 32, !tbaa !50
  %i.amh = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 96
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 12
  %i.amk = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amj, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amk, ptr %i.amh, align 32, !tbaa !50
  %i.aml = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 128
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  %i.amo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amn, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amo, ptr %i.aml, align 32, !tbaa !50
  %i.amp = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 160
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 20
  %i.ams = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amr, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ams, ptr %i.amp, align 32, !tbaa !50
  %i.amt = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 192
  %i.amu = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 24
  %i.amw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amv, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.amw, ptr %i.amt, align 32, !tbaa !50
  %i.amx = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 224
  %i.amy = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2256.i
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 28
  %i.ana = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.amz, <8 x i32> %i.kn, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <8 x float> %i.ana, ptr %i.amx, align 32, !tbaa !50
  %i.anb = getelementptr inbounds nuw i8, ptr %.1112511760.i, i64 256 ; 3 uses
  %indvars.iv.next2257.i.7 = add nuw nsw i64 %indvars.iv2256.i, 8 ; 2 uses
  %niter622.next.7 = add i64 %niter622, 8         ; 2 uses
  %niter622.ncmp.7 = icmp eq i64 %niter622.next.7, %unroll_iter621
  br i1 %niter622.ncmp.7, label %._crit_edge1761.i.unr-lcssa, label %.preheader1574.i.new, !llvm.loop !80

._crit_edge1765.split.i:                          ; preds = %._crit_edge1761.i, %.preheader1579.i, %.preheader1575.lr.ph.i, %.preheader1576.lr.ph.i
  %indvars.iv.next2265.i = add nuw nsw i64 %indvars.iv2264.i, 8 ; 3 uses
  %i.anc = icmp slt i64 %indvars.iv.next2265.i, %invariant.op.i
  %indvars.iv.next2206.i = add i32 %indvars.iv2205.i, %i.la
  %indvars.iv.next2263.i = add i32 %indvars.iv2262.i, 8
  br i1 %i.anc, label %_ZN4ncnn3MatD2Ev.exit1327.i, label %.preheader1573.loopexit.i, !llvm.loop !81

.preheader1564.loopexit.i:                        ; preds = %._crit_edge1851.split.i
  %i.and = trunc nsw i64 %indvars.iv.next2317.i to i32
  br label %.preheader1564.i

.preheader1564.i:                                 ; preds = %.preheader1564.loopexit.i, %.preheader1573.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1573.i ], [ %i.and, %.preheader1564.loopexit.i ] ; 4 uses
  %i.ane = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.anf = icmp slt i32 %i.ane, %i.m
  br i1 %i.anf, label %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i, label %.preheader1554.i

_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i:                ; preds = %.preheader1564.i
  %i.ang = mul i32 %i.n, %i.j                     ; 5 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.anj = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.ank = shufflevector <4 x i32> %i.anj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.anl = mul <4 x i32> %i.ank, <i32 0, i32 1, i32 2, i32 3> ; 10 uses
  %i.anm = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.ann = shufflevector <8 x i32> %i.anm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ano = mul <8 x i32> %i.ann, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 10 uses
  %i.anp = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.anq = shufflevector <16 x i32> %i.anp, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.anr = mul <16 x i32> %i.anq, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 10 uses
  %i.ans = icmp sgt i32 %i.n, 15
  %i.ant = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.anu = shl i32 %i.j, 4
  %i.anv = sext i32 %i.anu to i64                 ; 3 uses
  %i.anw = shl i32 %i.j, 3
  %i.anx = sext i32 %i.anw to i64                 ; 3 uses
  %i.any = shl i32 %i.j, 2
  %i.anz = sext i32 %i.any to i64                 ; 2 uses
  %i.aoa = sext i32 %i.j to i64                   ; 11 uses
  %i.aob = shl i32 %i.j, 1                        ; 2 uses
  %i.aoc = sext i32 %i.aob to i64                 ; 3 uses
  %i.aod = icmp slt i32 %i.j, 1
  %i.aoe = add i32 %i.n, -16                      ; 2 uses
  %i.aof = lshr i32 %i.aoe, 2
  %i.aog = and i32 %i.aof, 1073741820
  %narrow2442.i = add nuw nsw i32 %i.aog, 4
  %i.aoh = zext nneg i32 %narrow2442.i to i64
  %i.aoi = mul nsw i64 %i.aoh, %i.anv
  %i.aoj = mul i32 %i.ang, %.2.lcssa.i
  %i.aok = shl i32 %i.ang, 1                      ; 2 uses
  %i.aol = mul i32 %i.ane, %i.ang
  %i.aom = and i32 %i.aoe, -16
  %i.aon = add nuw nsw i32 %i.aom, 16             ; 4 uses
  %i.aoo = add i32 %i.n, -8
  %i.aop = sext i32 %.2.lcssa.i to i64
  %i.aoq = sext i32 %i.m to i64
  %i.aor = or disjoint i32 %i.aon, 7
  %i.aos = icmp slt i32 %i.aor, %i.n
  %wide.trip.count2329.i = zext i32 %i.j to i64   ; 26 uses
  %i.aot = shl nuw nsw i64 %wide.trip.count2329.i, 3
  %i.aou = shl nuw nsw i64 %wide.trip.count2329.i, 2 ; 5 uses
  %i.aov = shl nuw nsw i64 %wide.trip.count2329.i, 4
  %i.aow = shl nuw nsw i64 %i.aoa, 2              ; 3 uses
  %i.aox = add nuw nsw i64 %i.aow, %i.aou         ; 2 uses
  %i.aoy = shl nsw i64 %i.aoc, 2
  %i.aoz = add nsw i64 %wide.trip.count2329.i, -1 ; 3 uses
  %xtraiter640 = and i64 %wide.trip.count2329.i, 3 ; 3 uses
  %i.apa = icmp ult i64 %i.aoz, 3
  %unroll_iter645 = and i64 %wide.trip.count2329.i, 2147483644
  %lcmp.mod642.not = icmp eq i64 %xtraiter640, 0
  %lcmp.mod644 = icmp ne i64 %xtraiter640, 0
  %xtraiter648 = and i64 %wide.trip.count2329.i, 3 ; 3 uses
  %i.apb = icmp ult i64 %i.aoz, 3
  %unroll_iter653 = and i64 %wide.trip.count2329.i, 2147483644
  %lcmp.mod650.not = icmp eq i64 %xtraiter648, 0
  %lcmp.mod652 = icmp ne i64 %xtraiter648, 0
  %xtraiter656 = and i64 %wide.trip.count2329.i, 3 ; 3 uses
  %i.apc = icmp ult i64 %i.aoz, 3
  %unroll_iter661 = and i64 %wide.trip.count2329.i, 2147483644
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  %lcmp.mod660 = icmp ne i64 %xtraiter656, 0
  %min.iters.check373 = icmp ult i32 %i.j, 4
  %stride.check361 = icmp slt i32 %i.aob, 0
  %min.iters.check375 = icmp ult i32 %i.j, 16
  %i.apd = and i64 %wide.trip.count2329.i, 12
  %n.vec377 = and i64 %wide.trip.count2329.i, 2147483632 ; 5 uses
  %i.ape = shl nuw nsw i64 %n.vec377, 4
  %cmp.n388 = icmp eq i64 %n.vec377, %wide.trip.count2329.i
  %min.epilog.iters.check393 = icmp eq i64 %i.apd, 0
  %n.vec395 = and i64 %wide.trip.count2329.i, 2147483644 ; 4 uses
  %i.apf = shl nuw nsw i64 %n.vec395, 4
  %cmp.n406 = icmp eq i64 %n.vec395, %wide.trip.count2329.i
  %xtraiter663 = and i64 %wide.trip.count2329.i, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  %i.apg = add nsw i64 %wide.trip.count2329.i, -1
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check331 = icmp ult i32 %i.j, 16
  %i.aph = and i64 %wide.trip.count2329.i, 12
  %n.vec = and i64 %wide.trip.count2329.i, 2147483632 ; 5 uses
  %i.api = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2329.i
  %min.epilog.iters.check = icmp eq i64 %i.aph, 0
  %n.vec333 = and i64 %wide.trip.count2329.i, 2147483644 ; 4 uses
  %i.apj = shl nuw nsw i64 %n.vec333, 3
  %cmp.n340 = icmp eq i64 %n.vec333, %wide.trip.count2329.i
  %xtraiter665 = and i64 %wide.trip.count2329.i, 3 ; 2 uses
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br label %_ZN4ncnn3MatD2Ev.exit1325.i

_ZN4ncnn3MatD2Ev.exit1326.i:                      ; preds = %._crit_edge1851.split.i, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i
  %indvars.iv2316.i = phi i64 [ %i.abg, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %indvars.iv.next2317.i, %._crit_edge1851.split.i ] ; 2 uses
  %i.apk = phi i32 [ %i.zn, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axp, %._crit_edge1851.split.i ]
  %i.apl = phi <4 x i32> [ %i.abc, %_ZN4ncnn3MatD2Ev.exit1326.lr.ph.i ], [ %i.axo, %._crit_edge1851.split.i ] ; 2 uses
  %i.apm = sext <4 x i32> %i.apl to <4 x i64>
  %i.apn = shl nsw <4 x i64> %i.apm, splat (i64 2) ; 4 uses
  %i.apo = load ptr, ptr %i.o, align 8, !tbaa !18 ; 5 uses
  %i.app = trunc i64 %indvars.iv2316.i to i32     ; 6 uses
  %i.apq = mul i32 %i.zs, %i.app
  %i.apr = sext i32 %i.apq to i64
  %i.aps = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.apr ; 2 uses
  %i.apt = add i32 %i.app, 1
  %i.apu = mul i32 %i.apt, %i.zs
  %i.apv = sext i32 %i.apu to i64
  %i.apw = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.apv ; 2 uses
  %i.apx = add i32 %i.app, 2
  %i.apy = mul i32 %i.apx, %i.zs
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.apz ; 2 uses
  %i.aqb = mul i32 %i.apk, %i.zs
  %i.aqc = sext i32 %i.aqb to i64
  %i.aqd = getelementptr inbounds [4 x i8], ptr %i.apo, i64 %i.aqc ; 2 uses
  %i.aqe = lshr i32 %i.app, 4
  %i.aqf = lshr i32 %i.app, 3
  %i.aqg = and i32 %i.aqf, 1
  %i.aqh = add nuw nsw i32 %i.aqg, %i.aqe
  %i.aqi = lshr i32 %i.app, 2
  %i.aqj = and i32 %i.aqi, 1
  %i.aqk = add nuw nsw i32 %i.aqh, %i.aqj
  %i.aql = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !82
  %i.aqm = load i64, ptr %i.zt, align 8, !tbaa !20, !noalias !82
  %i.aqn = zext nneg i32 %i.aqk to i64
  %i.aqo = mul i64 %i.aqm, %i.aqn
  %i.aqp = load i64, ptr %i.zu, align 8, !tbaa !49, !noalias !82
  %i.aqq = mul i64 %i.aqo, %i.aqp
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqq ; 4 uses
  br i1 %i.aae, label %.preheader1569.lr.ph.i, label %.preheader1572.i

.preheader1569.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1326.i
  br i1 %i.aaf, label %.preheader1569.us.i, label %.preheader1572.thread.i

.preheader1569.us.i:                              ; preds = %.preheader1569.lr.ph.i, %._crit_edge1770.us.i
  %.012581777.us.i = phi i32 [ %i.aru, %._crit_edge1770.us.i ], [ 0, %.preheader1569.lr.ph.i ]
  %.012631776.us.i = phi ptr [ %i.arp, %._crit_edge1770.us.i ], [ %i.aqr, %.preheader1569.lr.ph.i ]
  %.012741775.us.i = phi ptr [ %i.art, %._crit_edge1770.us.i ], [ %i.aqd, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012771774.us.i = phi ptr [ %i.ars, %._crit_edge1770.us.i ], [ %i.aqa, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012801773.us.i = phi ptr [ %i.arr, %._crit_edge1770.us.i ], [ %i.apw, %.preheader1569.lr.ph.i ] ; 2 uses
  %.012831772.us.i = phi ptr [ %i.arq, %._crit_edge1770.us.i ], [ %i.aps, %.preheader1569.lr.ph.i ] ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.preheader1569.us.i
  %indvars.iv2282.i = phi i64 [ 0, %.preheader1569.us.i ], [ %indvars.iv.next2283.i, %bb.bi ] ; 5 uses
  %.112641768.us.i = phi ptr [ %.012631776.us.i, %.preheader1569.us.i ], [ %i.arp, %bb.bi ] ; 5 uses
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %indvars.iv2282.i
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %indvars.iv2282.i
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %indvars.iv2282.i
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %indvars.iv2282.i
  %i.aqw = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqs, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqt, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqu, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aqv, <16 x i32> %i.aad, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ara = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.arb = shufflevector <16 x float> %i.aqw, <16 x float> %i.aqx, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.arc = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ard = shufflevector <16 x float> %i.aqy, <16 x float> %i.aqz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.are = shufflevector <16 x float> %i.ara, <16 x float> %i.arc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arf = shufflevector <16 x float> %i.arb, <16 x float> %i.ard, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.ara, <16 x float> %i.arc, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.arh = shufflevector <16 x float> %i.arb, <16 x float> %i.ard, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ari = shufflevector <16 x float> %i.are, <16 x float> %i.arf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.arj = shufflevector <16 x float> %i.arg, <16 x float> %i.arh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ark = shufflevector <16 x float> %i.are, <16 x float> %i.arf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.arl = shufflevector <16 x float> %i.arg, <16 x float> %i.arh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  store <16 x float> %i.ari, ptr %.112641768.us.i, align 1, !tbaa !50
  %i.arm = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 64
  store <16 x float> %i.arj, ptr %i.arm, align 1, !tbaa !50
  %i.arn = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 128
  store <16 x float> %i.ark, ptr %i.arn, align 1, !tbaa !50
  %i.aro = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 192
  store <16 x float> %i.arl, ptr %i.aro, align 1, !tbaa !50
  %i.arp = getelementptr inbounds nuw i8, ptr %.112641768.us.i, i64 256 ; 3 uses
  %indvars.iv.next2283.i = add nuw nsw i64 %indvars.iv2282.i, 1 ; 2 uses
  %exitcond2286.not.i = icmp eq i64 %indvars.iv.next2283.i, %wide.trip.count2285.i
  br i1 %exitcond2286.not.i, label %._crit_edge1770.us.i, label %bb.bi, !llvm.loop !85

._crit_edge1770.us.i:                             ; preds = %bb.bi
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %.012831772.us.i, i64 %i.aah ; 2 uses
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %.012801773.us.i, i64 %i.aah ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %.012771774.us.i, i64 %i.aah ; 2 uses
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %.012741775.us.i, i64 %i.aah ; 2 uses
  %i.aru = add nuw nsw i32 %.012581777.us.i, 16   ; 2 uses
  %i.arv = or disjoint i32 %i.aru, 15
  %i.arw = icmp slt i32 %i.arv, %i.n
  br i1 %i.arw, label %.preheader1569.us.i, label %.preheader1572.i, !llvm.loop !86

.preheader1572.i:                                 ; preds = %._crit_edge1770.us.i, %_ZN4ncnn3MatD2Ev.exit1326.i
  %.01283.lcssa.i = phi ptr [ %i.aps, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arq, %._crit_edge1770.us.i ] ; 3 uses
  %.01280.lcssa.i = phi ptr [ %i.apw, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arr, %._crit_edge1770.us.i ] ; 3 uses
  %.01277.lcssa.i = phi ptr [ %i.aqa, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.ars, %._crit_edge1770.us.i ] ; 3 uses
  %.01274.lcssa.i = phi ptr [ %i.aqd, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.art, %._crit_edge1770.us.i ] ; 3 uses
  %.01263.lcssa.i = phi ptr [ %i.aqr, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.arp, %._crit_edge1770.us.i ] ; 3 uses
  %.01258.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1326.i ], [ %i.abe, %._crit_edge1770.us.i ] ; 4 uses
  %i.arx = or disjoint i32 %.01258.lcssa.i, 7
  %i.ary = icmp slt i32 %i.arx, %i.n
  br i1 %i.ary, label %.preheader1568.lr.ph.i, label %.preheader1571.i

.preheader1572.thread.i:                          ; preds = %.preheader1569.lr.ph.i
  %scevgep2269.i = getelementptr i8, ptr %i.apo, i64 %i.aax ; 4 uses
  %i.arz = extractelement <4 x i64> %i.apn, i64 0
  %scevgep2272.i = getelementptr i8, ptr %scevgep2269.i, i64 %i.arz ; 2 uses
  %i.asa = extractelement <4 x i64> %i.apn, i64 1
  %scevgep2275.i = getelementptr i8, ptr %scevgep2269.i, i64 %i.asa ; 2 uses
  %i.asb = extractelement <4 x i64> %i.apn, i64 2
  %scevgep2278.i = getelementptr i8, ptr %scevgep2269.i, i64 %i.asb ; 2 uses
  %i.asc = extractelement <4 x i64> %i.apn, i64 3
  %scevgep2281.i = getelementptr i8, ptr %scevgep2269.i, i64 %i.asc ; 2 uses
  br i1 %i.abj, label %.preheader1568.preheader.i, label %.preheader1571.i

.preheader1568.lr.ph.i:                           ; preds = %.preheader1572.i
  br i1 %i.aaf, label %.preheader1568.us.i, label %.preheader1568.preheader.i

.preheader1568.preheader.i:                       ; preds = %.preheader1568.lr.ph.i, %.preheader1572.thread.i
  %.01283.lcssa25292546.i = phi ptr [ %.01283.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2272.i, %.preheader1572.thread.i ]
  %.01280.lcssa25302545.i = phi ptr [ %.01280.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2275.i, %.preheader1572.thread.i ]
  %.01277.lcssa25312544.i = phi ptr [ %.01277.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2278.i, %.preheader1572.thread.i ]
  %.01274.lcssa25322543.i = phi ptr [ %.01274.lcssa.i, %.preheader1568.lr.ph.i ], [ %scevgep2281.i, %.preheader1572.thread.i ]
  %.01263.lcssa25332542.i = phi ptr [ %.01263.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.aqr, %.preheader1572.thread.i ]
  %.01258.lcssa25342541.i = phi i32 [ %.01258.lcssa.i, %.preheader1568.lr.ph.i ], [ %i.abe, %.preheader1572.thread.i ] ; 2 uses
  %i.asd = sub i32 %i.abf, %.01258.lcssa25342541.i ; 2 uses
  %i.ase = lshr i32 %i.asd, 1
  %i.asf = and i32 %i.ase, 2147483644
  %narrow2441.i = add nuw i32 %i.asf, 4
  %i.asg = zext i32 %narrow2441.i to i64
  %i.ash = mul nsw i64 %i.asg, %i.aaj             ; 4 uses
  %scevgep2287.i = getelementptr i8, ptr %.01283.lcssa25292546.i, i64 %i.ash
  %scevgep2288.i = getelementptr i8, ptr %.01280.lcssa25302545.i, i64 %i.ash
  %scevgep2289.i = getelementptr i8, ptr %.01277.lcssa25312544.i, i64 %i.ash
  %scevgep2290.i = getelementptr i8, ptr %.01274.lcssa25322543.i, i64 %i.ash
  %i.asi = add i32 %.01258.lcssa25342541.i, 8
  %i.asj = and i32 %i.asd, -8
  %i.ask = add i32 %i.asi, %i.asj
  br label %.preheader1571.i

.preheader1568.us.i:                              ; preds = %.preheader1568.lr.ph.i, %._crit_edge1792.us.i
end_hunk_2
begin_hunk_3_@_ZN4ncnn24Convolution1D_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.avb = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 48
  %i.avc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.ava, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avc, ptr %i.avb, align 16, !tbaa !50
  %i.avd = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 64
  %i.ave = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2305.i
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 8 ; 2 uses
  %i.avg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avf, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avg, ptr %i.avd, align 16, !tbaa !50
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.avf, i64 %i.aap
  %i.avi = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 80
  %i.avj = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avh, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avj, ptr %i.avi, align 16, !tbaa !50
  %i.avk = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 96
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2305.i
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 12 ; 2 uses
  %i.avn = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avm, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avn, ptr %i.avk, align 16, !tbaa !50
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %i.aap
  %i.avp = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 112
  %i.avq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.avo, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avq, ptr %i.avp, align 16, !tbaa !50
  %i.avr = getelementptr inbounds nuw i8, ptr %.712701832.us.i, i64 128 ; 3 uses
  %indvars.iv.next2306.i.3 = add nuw nsw i64 %indvars.iv2305.i, 4 ; 2 uses
  %niter630.next.3 = add i64 %niter630, 4         ; 2 uses
  %niter630.ncmp.3 = icmp eq i64 %niter630.next.3, %unroll_iter629
  br i1 %niter630.ncmp.3, label %._crit_edge1834.us.i.unr-lcssa, label %.preheader1566.us.i.new, !llvm.loop !91

._crit_edge1834.us.i.unr-lcssa:                   ; preds = %.preheader1566.us.i.new
  br i1 %lcmp.mod626.not, label %._crit_edge1834.us.i, label %.epil.preheader623

.epil.preheader623:                               ; preds = %._crit_edge1834.us.i.unr-lcssa, %.preheader1566.us.i
  %indvars.iv2305.i.epil.init = phi i64 [ 0, %.preheader1566.us.i ], [ %indvars.iv.next2306.i.3, %._crit_edge1834.us.i.unr-lcssa ]
  %.712701832.us.i.epil.init = phi ptr [ %.612691837.us.i, %.preheader1566.us.i ], [ %i.avr, %._crit_edge1834.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod628)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader623
  %indvars.iv2305.i.epil = phi i64 [ %indvars.iv2305.i.epil.init, %.epil.preheader623 ], [ %indvars.iv.next2306.i.epil, %bb.bl ] ; 2 uses
  %.712701832.us.i.epil = phi ptr [ %.712701832.us.i.epil.init, %.epil.preheader623 ], [ %i.avx, %bb.bl ] ; 3 uses
  %epil.iter625 = phi i64 [ 0, %.epil.preheader623 ], [ %epil.iter625.next, %bb.bl ]
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %indvars.iv2305.i.epil ; 2 uses
  %i.avt = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avs, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avt, ptr %.712701832.us.i.epil, align 16, !tbaa !50
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %i.aap
  %i.avv = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 16
  %i.avw = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.avu, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.avw, ptr %i.avv, align 16, !tbaa !50
  %i.avx = getelementptr inbounds nuw i8, ptr %.712701832.us.i.epil, i64 32 ; 2 uses
  %indvars.iv.next2306.i.epil = add nuw nsw i64 %indvars.iv2305.i.epil, 1
  %epil.iter625.next = add i64 %epil.iter625, 1   ; 2 uses
  %epil.iter625.cmp.not = icmp eq i64 %epil.iter625.next, %xtraiter624
  br i1 %epil.iter625.cmp.not, label %._crit_edge1834.us.i, label %bb.bl, !llvm.loop !92

._crit_edge1834.us.i:                             ; preds = %bb.bl, %._crit_edge1834.us.i.unr-lcssa
  %.lcssa547 = phi ptr [ %i.avr, %._crit_edge1834.us.i.unr-lcssa ], [ %i.avx, %bb.bl ] ; 2 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %.312861836.us.i, i64 %i.aar ; 2 uses
  %i.avz = add nuw nsw i32 %.312611838.us.i, 2    ; 3 uses
  %i.awa = or disjoint i32 %i.avz, 1
  %i.awb = icmp slt i32 %i.awa, %i.n
  br i1 %i.awb, label %.preheader1566.us.i, label %.preheader1570.i, !llvm.loop !93

.preheader1570.i:                                 ; preds = %._crit_edge1834.us.i, %._crit_edge1822.i
  %.31286.lcssa.i = phi ptr [ %.21285.lcssa.i, %._crit_edge1822.i ], [ %i.avy, %._crit_edge1834.us.i ] ; 9 uses
  %.61269.lcssa.i = phi ptr [ %.41267.lcssa.i, %._crit_edge1822.i ], [ %.lcssa547, %._crit_edge1834.us.i ]
  %.31261.lcssa.i = phi i32 [ %.21260.lcssa.i, %._crit_edge1822.i ], [ %i.avz, %._crit_edge1834.us.i ] ; 2 uses
  %i.awc = icmp sge i32 %.31261.lcssa.i, %i.n
  %brmerge2001.i = or i1 %i.aas, %i.awc
  br i1 %brmerge2001.i, label %._crit_edge1851.split.i, label %.preheader1565.i

.preheader1565.i:                                 ; preds = %.preheader1570.i, %._crit_edge1847.i
  %.412621850.i = phi i32 [ %i.awg, %._crit_edge1847.i ], [ %.31261.lcssa.i, %.preheader1570.i ]
  %.912721849.i = phi ptr [ %.lcssa550, %._crit_edge1847.i ], [ %.61269.lcssa.i, %.preheader1570.i ] ; 2 uses
  br i1 %i.abo, label %.epil.preheader631, label %.preheader1565.i.new

._crit_edge1847.i.unr-lcssa:                      ; preds = %.preheader1565.i.new
  br i1 %lcmp.mod634.not, label %._crit_edge1847.i, label %.epil.preheader631

.epil.preheader631:                               ; preds = %._crit_edge1847.i.unr-lcssa, %.preheader1565.i
  %indvars.iv2310.i.epil.init = phi i64 [ 0, %.preheader1565.i ], [ %indvars.iv.next2311.i.7, %._crit_edge1847.i.unr-lcssa ]
  %.1012731845.i.epil.init = phi ptr [ %.912721849.i, %.preheader1565.i ], [ %i.axl, %._crit_edge1847.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod636)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader631
  %indvars.iv2310.i.epil = phi i64 [ %indvars.iv2310.i.epil.init, %.epil.preheader631 ], [ %indvars.iv.next2311.i.epil, %bb.bm ] ; 2 uses
  %.1012731845.i.epil = phi ptr [ %.1012731845.i.epil.init, %.epil.preheader631 ], [ %i.awf, %bb.bm ] ; 2 uses
  %epil.iter633 = phi i64 [ 0, %.epil.preheader631 ], [ %epil.iter633.next, %bb.bm ]
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i.epil
  %i.awe = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awd, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awe, ptr %.1012731845.i.epil, align 16, !tbaa !50
  %i.awf = getelementptr inbounds nuw i8, ptr %.1012731845.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2311.i.epil = add nuw nsw i64 %indvars.iv2310.i.epil, 1
  %epil.iter633.next = add i64 %epil.iter633, 1   ; 2 uses
  %epil.iter633.cmp.not = icmp eq i64 %epil.iter633.next, %xtraiter632
  br i1 %epil.iter633.cmp.not, label %._crit_edge1847.i, label %bb.bm, !llvm.loop !94

._crit_edge1847.i:                                ; preds = %bb.bm, %._crit_edge1847.i.unr-lcssa
  %.lcssa550 = phi ptr [ %i.axl, %._crit_edge1847.i.unr-lcssa ], [ %i.awf, %bb.bm ]
  %i.awg = add nuw nsw i32 %.412621850.i, 1       ; 2 uses
  %exitcond2315.not.i = icmp eq i32 %i.awg, %i.n
  br i1 %exitcond2315.not.i, label %._crit_edge1851.split.i, label %.preheader1565.i, !llvm.loop !95

.preheader1565.i.new:                             ; preds = %.preheader1565.i, %.preheader1565.i.new
  %indvars.iv2310.i = phi i64 [ %indvars.iv.next2311.i.7, %.preheader1565.i.new ], [ 0, %.preheader1565.i ] ; 9 uses
  %.1012731845.i = phi ptr [ %i.axl, %.preheader1565.i.new ], [ %.912721849.i, %.preheader1565.i ] ; 9 uses
  %niter638 = phi i64 [ %niter638.next.7, %.preheader1565.i.new ], [ 0, %.preheader1565.i ]
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awi = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.awh, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awi, ptr %.1012731845.i, align 16, !tbaa !50
  %i.awj = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 16
  %i.awk = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  %i.awm = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awl, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awm, ptr %i.awj, align 16, !tbaa !50
  %i.awn = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 32
  %i.awo = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 8
  %i.awq = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awp, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awq, ptr %i.awn, align 16, !tbaa !50
  %i.awr = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 48
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 12
  %i.awu = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awt, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awu, ptr %i.awr, align 16, !tbaa !50
  %i.awv = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 64
  %i.aww = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 16
  %i.awy = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.awx, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.awy, ptr %i.awv, align 16, !tbaa !50
  %i.awz = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 80
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 20
  %i.axc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axb, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axc, ptr %i.awz, align 16, !tbaa !50
  %i.axd = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 96
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 24
  %i.axg = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axf, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axg, ptr %i.axd, align 16, !tbaa !50
  %i.axh = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 112
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %.31286.lcssa.i, i64 %indvars.iv2310.i
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 28
  %i.axk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.axj, <4 x i32> %i.aao, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  store <4 x float> %i.axk, ptr %i.axh, align 16, !tbaa !50
  %i.axl = getelementptr inbounds nuw i8, ptr %.1012731845.i, i64 128 ; 3 uses
  %indvars.iv.next2311.i.7 = add nuw nsw i64 %indvars.iv2310.i, 8 ; 2 uses
  %niter638.next.7 = add i64 %niter638, 8         ; 2 uses
  %niter638.ncmp.7 = icmp eq i64 %niter638.next.7, %unroll_iter637
  br i1 %niter638.ncmp.7, label %._crit_edge1847.i.unr-lcssa, label %.preheader1565.i.new, !llvm.loop !96

._crit_edge1851.split.i:                          ; preds = %._crit_edge1847.i, %.preheader1570.i, %.preheader1566.lr.ph.i, %.preheader1567.lr.ph.i
  %indvars.iv.next2317.i = add nuw nsw i64 %indvars.iv2316.i, 4 ; 3 uses
  %i.axm = or disjoint i64 %indvars.iv.next2317.i, 3 ; 2 uses
  %i.axn = icmp slt i64 %i.axm, %i.abh
  %i.axo = add <4 x i32> %i.apl, %i.abl
  %i.axp = trunc nsw i64 %i.axm to i32
  br i1 %i.axn, label %_ZN4ncnn3MatD2Ev.exit1326.i, label %.preheader1564.loopexit.i, !llvm.loop !97

.preheader1554.loopexit.i:                        ; preds = %._crit_edge1928.split.i
  %i.axq = trunc nsw i64 %indvars.iv.next2361.i to i32
  br label %.preheader1554.i

.preheader1554.i:                                 ; preds = %.preheader1554.loopexit.i, %.preheader1564.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1564.i ], [ %i.axq, %.preheader1554.loopexit.i ] ; 3 uses
  %i.axr = icmp slt i32 %.3.lcssa.i, %i.m
  br i1 %i.axr, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1554.i
  %i.axs = mul i32 %i.n, %i.j                     ; 3 uses
  %i.axt = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.axv = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %i.axw = shufflevector <4 x i32> %i.axv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.axx = mul <4 x i32> %i.axw, <i32 0, i32 1, i32 2, i32 3> ; 9 uses
  %i.axy = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %i.axz = shufflevector <8 x i32> %i.axy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aya = mul <8 x i32> %i.axz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.ayb = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %i.ayc = shufflevector <16 x i32> %i.ayb, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ayd = mul <16 x i32> %i.ayc, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 9 uses
  %i.aye = icmp sgt i32 %i.n, 15
  %i.ayf = icmp sgt i32 %i.j, 0                   ; 4 uses
  %i.ayg = shl i32 %i.j, 4
  %i.ayh = sext i32 %i.ayg to i64                 ; 2 uses
  %i.ayi = shl i32 %i.j, 3
  %i.ayj = sext i32 %i.ayi to i64                 ; 2 uses
  %i.ayk = shl i32 %i.j, 2
  %i.ayl = sext i32 %i.ayk to i64
  %i.aym = sext i32 %i.j to i64                   ; 8 uses
  %i.ayn = shl i32 %i.j, 1                        ; 2 uses
  %i.ayo = sext i32 %i.ayn to i64                 ; 2 uses
  %i.ayp = icmp slt i32 %i.j, 1
  %i.ayq = add i32 %i.n, -16                      ; 2 uses
  %i.ayr = lshr i32 %i.ayq, 2
  %i.ays = and i32 %i.ayr, 1073741820
  %narrow2444.i = add nuw nsw i32 %i.ays, 4
  %i.ayt = zext nneg i32 %narrow2444.i to i64
  %i.ayu = mul nsw i64 %i.ayt, %i.ayh
  %i.ayv = mul i32 %i.axs, %.3.lcssa.i
  %i.ayw = and i32 %i.ayq, -16
  %i.ayx = add nuw nsw i32 %i.ayw, 16             ; 4 uses
  %i.ayy = add i32 %i.n, -8
  %i.ayz = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2401.i = sext i32 %i.m to i64
  %i.aza = or disjoint i32 %i.ayx, 7
  %i.azb = icmp slt i32 %i.aza, %i.n
  %wide.trip.count2370.i = zext i32 %i.j to i64   ; 25 uses
  %i.azc = shl nuw nsw i64 %wide.trip.count2370.i, 3
  %i.azd = shl nuw nsw i64 %i.aym, 2              ; 2 uses
  %i.aze = shl nuw nsw i64 %wide.trip.count2370.i, 2 ; 2 uses
  %i.azf = shl nsw i64 %i.ayo, 2
  %i.azg = add nsw i64 %wide.trip.count2370.i, -1 ; 3 uses
  %xtraiter668 = and i64 %wide.trip.count2370.i, 7 ; 3 uses
  %i.azh = icmp ult i64 %i.azg, 7
  %unroll_iter673 = and i64 %wide.trip.count2370.i, 2147483640
  %lcmp.mod670.not = icmp eq i64 %xtraiter668, 0
  %lcmp.mod672 = icmp ne i64 %xtraiter668, 0
  %xtraiter676 = and i64 %wide.trip.count2370.i, 7 ; 3 uses
  %i.azi = icmp ult i64 %i.azg, 7
  %unroll_iter681 = and i64 %wide.trip.count2370.i, 2147483640
  %lcmp.mod678.not = icmp eq i64 %xtraiter676, 0
  %lcmp.mod680 = icmp ne i64 %xtraiter676, 0
  %xtraiter684 = and i64 %wide.trip.count2370.i, 7 ; 3 uses
  %i.azj = icmp ult i64 %i.azg, 7
  %unroll_iter689 = and i64 %wide.trip.count2370.i, 2147483640
  %lcmp.mod686.not = icmp eq i64 %xtraiter684, 0
  %lcmp.mod688 = icmp ne i64 %xtraiter684, 0
  %min.iters.check460 = icmp ult i32 %i.j, 8
  %stride.check458 = icmp slt i32 %i.ayn, 0
  %min.iters.check462 = icmp ult i32 %i.j, 32
  %i.azk = and i64 %wide.trip.count2370.i, 24
  %n.vec464 = and i64 %wide.trip.count2370.i, 2147483616 ; 5 uses
  %i.azl = shl nuw nsw i64 %n.vec464, 3
  %cmp.n477 = icmp eq i64 %n.vec464, %wide.trip.count2370.i
  %min.epilog.iters.check482 = icmp eq i64 %i.azk, 0
  %n.vec484 = and i64 %wide.trip.count2370.i, 2147483640 ; 4 uses
  %i.azm = shl nuw nsw i64 %n.vec484, 3
  %cmp.n493 = icmp eq i64 %n.vec484, %wide.trip.count2370.i
  %xtraiter691 = and i64 %wide.trip.count2370.i, 3 ; 2 uses
  %lcmp.mod692.not = icmp eq i64 %xtraiter691, 0
  %min.iters.check412 = icmp ult i32 %i.j, 8
  %min.iters.check414 = icmp ult i32 %i.j, 64
  %i.azn = and i64 %wide.trip.count2370.i, 56
  %n.vec416 = and i64 %wide.trip.count2370.i, 2147483584 ; 5 uses
  %i.azo = shl nuw nsw i64 %n.vec416, 2
  %cmp.n426 = icmp eq i64 %n.vec416, %wide.trip.count2370.i
  %min.epilog.iters.check431 = icmp eq i64 %i.azn, 0
  %n.vec433 = and i64 %wide.trip.count2370.i, 2147483640 ; 4 uses
  %i.azp = shl nuw nsw i64 %n.vec433, 2
  %cmp.n440 = icmp eq i64 %n.vec433, %wide.trip.count2370.i
  %xtraiter694 = and i64 %wide.trip.count2370.i, 7 ; 2 uses
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1325.i:                      ; preds = %._crit_edge1928.split.i, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i
  %indvars.iv2360.i = phi i64 [ %i.aop, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2361.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2323.i = phi i32 [ %i.aol, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2324.i, %._crit_edge1928.split.i ] ; 2 uses
  %indvars.iv2320.i = phi i32 [ %i.aoj, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %indvars.iv.next2321.i, %._crit_edge1928.split.i ] ; 2 uses
  %i.azq = phi i32 [ %i.ane, %_ZN4ncnn3MatD2Ev.exit1325.lr.ph.i ], [ %i.bjn, %._crit_edge1928.split.i ]
  %i.azr = sext i32 %indvars.iv2320.i to i64
  %i.azs = shl nsw i64 %i.azr, 2
  %i.azt = sext i32 %indvars.iv2323.i to i64
  %i.azu = shl nsw i64 %i.azt, 2
  %i.azv = load ptr, ptr %i.o, align 8, !tbaa !18 ; 3 uses
  %i.azw = trunc nsw i64 %indvars.iv2360.i to i32 ; 2 uses
  %i.azx = mul i32 %i.ang, %i.azw
  %i.azy = sext i32 %i.azx to i64
  %i.azz = getelementptr inbounds [4 x i8], ptr %i.azv, i64 %i.azy ; 2 uses
  %i.baa = mul i32 %i.azq, %i.ang
  %i.bab = sext i32 %i.baa to i64
  %i.bac = getelementptr inbounds [4 x i8], ptr %i.azv, i64 %i.bab ; 2 uses
  %i.bad = insertelement <4 x i32> poison, i32 %i.azw, i64 0
  %i.bae = shufflevector <4 x i32> %i.bad, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baf = lshr <4 x i32> %i.bae, <i32 3, i32 2, i32 1, i32 4>
  %i.bag = and <4 x i32> %i.baf, <i32 1, i32 1, i32 1, i32 -1>
  %i.bah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bag)
  %i.bai = load ptr, ptr %i.p, align 8, !tbaa !18, !noalias !98
  %i.baj = load i64, ptr %i.anh, align 8, !tbaa !20, !noalias !98
  %i.bak = zext nneg i32 %i.bah to i64
  %i.bal = mul i64 %i.baj, %i.bak
  %i.bam = load i64, ptr %i.ani, align 8, !tbaa !49, !noalias !98
  %i.ban = mul i64 %i.bal, %i.bam
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bai, i64 %i.ban ; 4 uses
  br i1 %i.ans, label %.preheader1559.lr.ph.i, label %.preheader1563.i

.preheader1559.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1325.i
  br i1 %i.ant, label %.preheader1559.us.i, label %.preheader1563.thread.i

.preheader1559.us.i:                              ; preds = %.preheader1559.lr.ph.i, %._crit_edge1856.us.i
  %.011821861.us.i = phi i32 [ %i.bbv, %._crit_edge1856.us.i ], [ 0, %.preheader1559.lr.ph.i ]
  %.011871860.us.i = phi ptr [ %.lcssa517, %._crit_edge1856.us.i ], [ %i.bao, %.preheader1559.lr.ph.i ] ; 2 uses
  %.011981859.us.i = phi ptr [ %i.bbu, %._crit_edge1856.us.i ], [ %i.bac, %.preheader1559.lr.ph.i ] ; 6 uses
  %.012021858.us.i = phi ptr [ %i.bbt, %._crit_edge1856.us.i ], [ %i.azz, %.preheader1559.lr.ph.i ] ; 6 uses
  br i1 %i.apa, label %.epil.preheader639, label %.preheader1559.us.i.new

.preheader1559.us.i.new:                          ; preds = %.preheader1559.us.i, %.preheader1559.us.i.new
  %indvars.iv2326.i = phi i64 [ %indvars.iv.next2327.i.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ] ; 6 uses
  %.111881854.us.i = phi ptr [ %i.bbm, %.preheader1559.us.i.new ], [ %.011871860.us.i, %.preheader1559.us.i ] ; 9 uses
  %niter646 = phi i64 [ %niter646.next.3, %.preheader1559.us.i.new ], [ 0, %.preheader1559.us.i ]
  %i.bap = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2326.i
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2326.i
  %i.bar = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bap, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bas = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.baq, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bar, ptr %.111881854.us.i, align 1, !tbaa !50
  %i.bat = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 64
  store <16 x float> %i.bas, ptr %i.bat, align 1, !tbaa !50
  %i.bau = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 128
  %indvars.iv.next2327.i = or disjoint i64 %indvars.iv2326.i, 1 ; 2 uses
  %i.bav = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2327.i
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2327.i
  %i.bax = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bav, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bay = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.baw, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bax, ptr %i.bau, align 1, !tbaa !50
  %i.baz = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 192
  store <16 x float> %i.bay, ptr %i.baz, align 1, !tbaa !50
  %i.bba = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 256
  %indvars.iv.next2327.i.1 = or disjoint i64 %indvars.iv2326.i, 2 ; 2 uses
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2327.i.1
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2327.i.1
  %i.bbd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbb, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bbe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbc, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbd, ptr %i.bba, align 1, !tbaa !50
  %i.bbf = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 320
  store <16 x float> %i.bbe, ptr %i.bbf, align 1, !tbaa !50
  %i.bbg = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 384
  %indvars.iv.next2327.i.2 = or disjoint i64 %indvars.iv2326.i, 3 ; 2 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv.next2327.i.2
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv.next2327.i.2
  %i.bbj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbh, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bbk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bbi, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbj, ptr %i.bbg, align 1, !tbaa !50
  %i.bbl = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 448
  store <16 x float> %i.bbk, ptr %i.bbl, align 1, !tbaa !50
  %i.bbm = getelementptr inbounds nuw i8, ptr %.111881854.us.i, i64 512 ; 3 uses
  %indvars.iv.next2327.i.3 = add nuw nsw i64 %indvars.iv2326.i, 4 ; 2 uses
  %niter646.next.3 = add i64 %niter646, 4         ; 2 uses
  %niter646.ncmp.3 = icmp eq i64 %niter646.next.3, %unroll_iter645
  br i1 %niter646.ncmp.3, label %._crit_edge1856.us.i.unr-lcssa, label %.preheader1559.us.i.new, !llvm.loop !101

._crit_edge1856.us.i.unr-lcssa:                   ; preds = %.preheader1559.us.i.new
  br i1 %lcmp.mod642.not, label %._crit_edge1856.us.i, label %.epil.preheader639

.epil.preheader639:                               ; preds = %._crit_edge1856.us.i.unr-lcssa, %.preheader1559.us.i
  %indvars.iv2326.i.epil.init = phi i64 [ 0, %.preheader1559.us.i ], [ %indvars.iv.next2327.i.3, %._crit_edge1856.us.i.unr-lcssa ]
  %.111881854.us.i.epil.init = phi ptr [ %.011871860.us.i, %.preheader1559.us.i ], [ %i.bbm, %._crit_edge1856.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod644)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.epil.preheader639
  %indvars.iv2326.i.epil = phi i64 [ %indvars.iv2326.i.epil.init, %.epil.preheader639 ], [ %indvars.iv.next2327.i.epil, %bb.bn ] ; 3 uses
  %.111881854.us.i.epil = phi ptr [ %.111881854.us.i.epil.init, %.epil.preheader639 ], [ %i.bbs, %bb.bn ] ; 3 uses
  %epil.iter641 = phi i64 [ 0, %.epil.preheader639 ], [ %epil.iter641.next, %bb.bn ]
  %i.bbn = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %indvars.iv2326.i.epil
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %indvars.iv2326.i.epil
  %i.bbp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbn, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  %i.bbq = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bbo, <16 x i32> %i.anr, <16 x i1> splat (i1 true), i32 4)
  store <16 x float> %i.bbp, ptr %.111881854.us.i.epil, align 1, !tbaa !50
  %i.bbr = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 64
  store <16 x float> %i.bbq, ptr %i.bbr, align 1, !tbaa !50
  %i.bbs = getelementptr inbounds nuw i8, ptr %.111881854.us.i.epil, i64 128 ; 2 uses
  %indvars.iv.next2327.i.epil = add nuw nsw i64 %indvars.iv2326.i.epil, 1
  %epil.iter641.next = add i64 %epil.iter641, 1   ; 2 uses
  %epil.iter641.cmp.not = icmp eq i64 %epil.iter641.next, %xtraiter640
  br i1 %epil.iter641.cmp.not, label %._crit_edge1856.us.i, label %bb.bn, !llvm.loop !102

._crit_edge1856.us.i:                             ; preds = %bb.bn, %._crit_edge1856.us.i.unr-lcssa
  %.lcssa517 = phi ptr [ %i.bbm, %._crit_edge1856.us.i.unr-lcssa ], [ %i.bbs, %bb.bn ] ; 2 uses
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.012021858.us.i, i64 %i.anv ; 2 uses
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %.011981859.us.i, i64 %i.anv ; 2 uses
  %i.bbv = add nuw nsw i32 %.011821861.us.i, 16   ; 2 uses
  %i.bbw = or disjoint i32 %i.bbv, 15
  %i.bbx = icmp slt i32 %i.bbw, %i.n
  br i1 %i.bbx, label %.preheader1559.us.i, label %.preheader1563.i, !llvm.loop !103

.preheader1563.i:                                 ; preds = %._crit_edge1856.us.i, %_ZN4ncnn3MatD2Ev.exit1325.i
  %.01202.lcssa.i = phi ptr [ %i.azz, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbt, %._crit_edge1856.us.i ] ; 3 uses
  %.01198.lcssa.i = phi ptr [ %i.bac, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.bbu, %._crit_edge1856.us.i ] ; 3 uses
  %.01187.lcssa.i = phi ptr [ %i.bao, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %.lcssa517, %._crit_edge1856.us.i ] ; 3 uses
  %.01182.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1325.i ], [ %i.aon, %._crit_edge1856.us.i ] ; 4 uses
  %i.bby = or disjoint i32 %.01182.lcssa.i, 7
  %i.bbz = icmp slt i32 %i.bby, %i.n
  br i1 %i.bbz, label %.preheader1558.lr.ph.i, label %.preheader1562.i

.preheader1563.thread.i:                          ; preds = %.preheader1559.lr.ph.i
  %scevgep2319.i = getelementptr i8, ptr %i.azv, i64 %i.aoi ; 2 uses
  %scevgep2322.i = getelementptr i8, ptr %scevgep2319.i, i64 %i.azs ; 2 uses
  %scevgep2325.i = getelementptr i8, ptr %scevgep2319.i, i64 %i.azu ; 2 uses
  br i1 %i.aos, label %.preheader1558.preheader.i, label %.preheader1562.i

.preheader1558.lr.ph.i:                           ; preds = %.preheader1563.i
  br i1 %i.ant, label %.preheader1558.us.i, label %.preheader1558.preheader.i

.preheader1558.preheader.i:                       ; preds = %.preheader1558.lr.ph.i, %.preheader1563.thread.i
  %.01202.lcssa25672578.i = phi ptr [ %.01202.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2322.i, %.preheader1563.thread.i ]
  %.01198.lcssa25682577.i = phi ptr [ %.01198.lcssa.i, %.preheader1558.lr.ph.i ], [ %scevgep2325.i, %.preheader1563.thread.i ]
  %.01187.lcssa25692576.i = phi ptr [ %.01187.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.bao, %.preheader1563.thread.i ]
  %.01182.lcssa25702575.i = phi i32 [ %.01182.lcssa.i, %.preheader1558.lr.ph.i ], [ %i.aon, %.preheader1563.thread.i ] ; 2 uses
  %i.bca = sub i32 %i.aoo, %.01182.lcssa25702575.i ; 2 uses
  %i.bcb = lshr i32 %i.bca, 1
  %i.bcc = and i32 %i.bcb, 2147483644
  %narrow2443.i = add nuw i32 %i.bcc, 4
end_hunk_3
begin_hunk_4_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.eu = lshr i32 %i.h, 1
  %i.ev = and i32 %i.eu, 1
  %i.ew = and i32 %i.h, 1
  %i.ex = add nuw nsw i32 %i.ew, 1
  %i.ey = add nuw nsw i32 %i.ex, %i.ev
  %i.ez = lshr i32 %i.g, 1
  %i.fa = and i32 %i.ez, 1
  %i.fb = and i32 %i.g, 1
  %i.fc = add nuw nsw i32 %i.fb, 1
  %i.fd = add nuw nsw i32 %i.fc, %i.fa
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.et, i32 noundef %i.ey, i32 noundef %i.fd, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.ad:                                            ; preds = %bb.ab
  %i.fe = icmp sgt i32 %i.h, 1
  br i1 %i.fe, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ff = shl nsw i32 %i.d, 3
  %i.fg = and i32 %i.h, 1
  %i.fh = add nuw nsw i32 %i.fg, 1
  %i.fi = lshr i32 %i.g, 1
  %i.fj = and i32 %i.fi, 1
  %i.fk = and i32 %i.g, 1
  %i.fl = add nuw nsw i32 %i.fk, 1
  %i.fm = add nuw nsw i32 %i.fl, %i.fj
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.ff, i32 noundef %i.fh, i32 noundef %i.fm, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.af:                                            ; preds = %bb.ad
  %i.fn = shl nsw i32 %i.d, 2
  %i.fo = lshr i32 %i.g, 1
  %i.fp = and i32 %i.fo, 1
  %i.fq = and i32 %i.g, 1
  %i.fr = add nuw nsw i32 %i.fq, 1
  %i.fs = add nuw nsw i32 %i.fr, %i.fp
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.fn, i32 noundef %i.h, i32 noundef %i.fs, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.ag:                                            ; preds = %bb.w
  %i.ft = icmp sgt i32 %i.g, 1
  %i.fu = icmp sgt i32 %i.h, 15                   ; 2 uses
  br i1 %i.ft, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.fu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = shl nsw i32 %i.d, 5
  %i.fw = lshr i32 %i.h, 4
  %i.fx = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %i.fy = shufflevector <4 x i32> %i.fx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fz = lshr <4 x i32> %i.fy, <i32 0, i32 3, i32 2, i32 1>
  %i.ga = and <4 x i32> %i.fz, splat (i32 1)
  %i.gb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ga)
  %op.rdx447 = add nuw nsw i32 %i.gb, %i.fw
  %i.gc = and i32 %i.g, 1
  %i.gd = add nuw nsw i32 %i.gc, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.fv, i32 noundef %op.rdx447, i32 noundef %i.gd, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.aj:                                            ; preds = %bb.ah
  %i.ge = icmp sgt i32 %i.h, 7
  br i1 %i.ge, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gf = shl nsw i32 %i.d, 4
  %i.gg = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.h, i64 0
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gi = lshr <4 x i32> %i.gh, <i32 0, i32 2, i32 1, i32 0>
  %i.gj = and <4 x i32> %i.gi, splat (i32 1)
  %i.gk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gj)
  %i.gl = and i32 %i.g, 1
  %i.gm = add nuw nsw i32 %i.gl, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.gf, i32 noundef %i.gk, i32 noundef %i.gm, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.al:                                            ; preds = %bb.aj
  %i.gn = icmp sgt i32 %i.h, 3
  br i1 %i.gn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.go = shl nsw i32 %i.d, 3
  %i.gp = lshr i32 %i.h, 1
  %i.gq = and i32 %i.gp, 1
  %i.gr = and i32 %i.h, 1
  %i.gs = add nuw nsw i32 %i.gr, 1
  %i.gt = add nuw nsw i32 %i.gs, %i.gq
  %i.gu = and i32 %i.g, 1
  %i.gv = add nuw nsw i32 %i.gu, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.go, i32 noundef %i.gt, i32 noundef %i.gv, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.an:                                            ; preds = %bb.al
  %i.gw = icmp sgt i32 %i.h, 1
  br i1 %i.gw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gx = shl nsw i32 %i.d, 2
  %i.gy = and i32 %i.h, 1
  %i.gz = add nuw nsw i32 %i.gy, 1
  %i.ha = and i32 %i.g, 1
  %i.hb = add nuw nsw i32 %i.ha, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.gx, i32 noundef %i.gz, i32 noundef %i.hb, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.ap:                                            ; preds = %bb.an
  %i.hc = shl nsw i32 %i.d, 1
  %i.hd = and i32 %i.g, 1
  %i.he = add nuw nsw i32 %i.hd, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.hc, i32 noundef %i.h, i32 noundef %i.he, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.aq:                                            ; preds = %bb.ag
  br i1 %i.fu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hf = shl nsw i32 %i.d, 4
  %i.hg = lshr i32 %i.h, 4
  %i.hh = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %i.hi = shufflevector <4 x i32> %i.hh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.hj = lshr <4 x i32> %i.hi, <i32 0, i32 3, i32 2, i32 1>
  %i.hk = and <4 x i32> %i.hj, splat (i32 1)
  %i.hl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hk)
  %op.rdx448 = add nuw nsw i32 %i.hl, %i.hg
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.hf, i32 noundef %op.rdx448, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.as:                                            ; preds = %bb.aq
  %i.hm = icmp sgt i32 %i.h, 7
  br i1 %i.hm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.hn = shl nsw i32 %i.d, 3
  %i.ho = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %i.h, i64 0
  %i.hp = shufflevector <4 x i32> %i.ho, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hq = lshr <4 x i32> %i.hp, <i32 0, i32 2, i32 1, i32 0>
  %i.hr = and <4 x i32> %i.hq, splat (i32 1)
  %i.hs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hr)
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.hn, i32 noundef %i.hs, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.au:                                            ; preds = %bb.as
  %i.ht = icmp sgt i32 %i.h, 3
  br i1 %i.ht, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hu = shl nsw i32 %i.d, 2
  %i.hv = lshr i32 %i.h, 1
  %i.hw = and i32 %i.hv, 1
  %i.hx = and i32 %i.h, 1
  %i.hy = add nuw nsw i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.hy, %i.hw
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.hu, i32 noundef %i.hz, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.aw:                                            ; preds = %bb.au
  %i.ia = icmp sgt i32 %i.h, 1
  br i1 %i.ia, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ib = shl nsw i32 %i.d, 1
  %i.ic = and i32 %i.h, 1
  %i.id = add nuw nsw i32 %i.ic, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.ib, i32 noundef %i.id, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

bb.ay:                                            ; preds = %bb.aw
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i32 noundef %i.d, i32 noundef %i.h, i32 noundef %i.g, i64 noundef 2, ptr noundef null)
  br label %.preheader1596.i

_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i:                ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.e
  %i.ie = mul i32 %i.h, %i.d                      ; 17 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ih = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.ii = shufflevector <16 x i32> %i.ih, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ij = mul <16 x i32> %i.ii, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 17 uses
  %i.ik = icmp sgt i32 %i.d, 0                    ; 4 uses
  %i.il = shl i32 %i.d, 4
  %i.im = sext i32 %i.il to i64                   ; 17 uses
  %i.in = insertelement <16 x i32> poison, i32 %i.h, i64 0
  %i.io = shufflevector <16 x i32> %i.in, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ip = mul <16 x i32> %i.io, %i.ij             ; 21 uses
  %i.iq = sext i32 %i.d to i64                    ; 13 uses
  %i.ir = shl i32 %i.d, 3
  %i.is = sext i32 %i.ir to i64                   ; 2 uses
  %i.it = shl i32 %i.d, 2
  %i.iu = sext i32 %i.it to i64
  %i.iv = shl i32 %i.d, 1
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp slt i32 %i.d, 1
  %i.iy = add i32 %i.h, -16                       ; 2 uses
  %i.iz = lshr i32 %i.iy, 2
  %i.ja = and i32 %i.iz, 1073741820
  %narrow.i = add nuw nsw i32 %i.ja, 4
  %i.jb = zext nneg i32 %narrow.i to i64
  %i.jc = mul nsw i64 %i.jb, %i.im
  %i.jd = shl i32 %i.ie, 4
  %i.je = and i32 %i.iy, -16
  %i.jf = add nuw nsw i32 %i.je, 16               ; 4 uses
  %i.jg = add i32 %i.h, -8
  %i.jh = zext nneg i32 %i.g to i64
  %i.ji = or disjoint i32 %i.jf, 7
  %i.jj = icmp slt i32 %i.ji, %i.h
  %wide.trip.count.i = zext i32 %i.d to i64       ; 8 uses
  %i.jk = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.jl = icmp eq i64 %i.jk, 0
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod526 = trunc i32 %i.d to i1
  %xtraiter528 = and i64 %wide.trip.count.i, 1
  %i.jm = icmp eq i64 %i.jk, 0
  %unroll_iter532 = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod529.not = icmp eq i64 %xtraiter528, 0
  %lcmp.mod531 = trunc i32 %i.d to i1
  br label %_ZN4ncnn3MatD2Ev.exit1303.i

.preheader1596.loopexit.i:                        ; preds = %._crit_edge1683.split.i
  %i.jn = trunc nuw nsw i64 %indvars.iv.next2216.i to i32
  br label %.preheader1596.i

.preheader1596.i:                                 ; preds = %.preheader1596.loopexit.i, %bb.ay, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.af, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.v, %bb.u, %bb.s, %bb.q, %bb.o
  %.0.lcssa.i = phi i32 [ %i.jn, %.preheader1596.loopexit.i ], [ 0, %bb.q ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.o ], [ 0, %bb.ak ], [ 0, %bb.ao ], [ 0, %bb.ap ], [ 0, %bb.am ], [ 0, %bb.ai ], [ 0, %bb.at ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.av ], [ 0, %bb.ar ], [ 0, %bb.y ], [ 0, %bb.ac ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.aa ] ; 5 uses
  %i.jo = or disjoint i32 %.0.lcssa.i, 7
  %i.jp = icmp slt i32 %i.jo, %i.g
  br i1 %i.jp, label %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i, label %.preheader1587.i

_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i:                ; preds = %.preheader1596.i
  %i.jq = mul i32 %i.h, %i.d                      ; 10 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.jt = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.ju = shufflevector <8 x i32> %i.jt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.jv = mul <8 x i32> %i.ju, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 9 uses
  %i.jw = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.jx = shufflevector <16 x i32> %i.jw, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.jy = mul <16 x i32> %i.jx, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 8 uses
  %i.jz = icmp sgt i32 %i.h, 15
  %i.ka = icmp sgt i32 %i.d, 0                    ; 4 uses
  %i.kb = shl i32 %i.d, 4
  %i.kc = sext i32 %i.kb to i64                   ; 9 uses
  %i.kd = shl i32 %i.d, 3
  %i.ke = sext i32 %i.kd to i64                   ; 9 uses
  %i.kf = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %i.kg = shufflevector <8 x i32> %i.kf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.kh = mul <8 x i32> %i.kg, %i.jv              ; 15 uses
  %i.ki = sext i32 %i.d to i64                    ; 6 uses
  %i.kj = shl i32 %i.d, 2
  %i.kk = sext i32 %i.kj to i64
  %i.kl = shl i32 %i.d, 1
  %i.km = sext i32 %i.kl to i64
  %i.kn = icmp slt i32 %i.d, 1
  %i.ko = add i32 %i.h, -16                       ; 2 uses
  %i.kp = lshr i32 %i.ko, 2
  %i.kq = and i32 %i.kp, 1073741820
  %narrow2452.i = add nuw nsw i32 %i.kq, 4
  %i.kr = zext nneg i32 %narrow2452.i to i64
  %i.ks = mul nsw i64 %i.kr, %i.kc
  %i.kt = mul i32 %i.jq, %.0.lcssa.i
  %i.ku = shl i32 %i.jq, 3
  %i.kv = and i32 %i.ko, -16
  %i.kw = add nuw nsw i32 %i.kv, 16               ; 4 uses
  %i.kx = add i32 %i.h, -8
  %i.ky = zext nneg i32 %.0.lcssa.i to i64
  %i.kz = add i32 %.0.lcssa.i, 7
  %i.la = sext i32 %i.g to i64
  %i.lb = or disjoint i32 %i.kw, 7
  %i.lc = icmp slt i32 %i.lb, %i.h
  %wide.trip.count2247.i = zext i32 %i.d to i64   ; 8 uses
  %invariant.op.i = add nsw i64 %i.la, -7
  %i.ld = add nsw i64 %wide.trip.count2247.i, -1  ; 2 uses
  %xtraiter535 = and i64 %wide.trip.count2247.i, 1
  %i.le = icmp eq i64 %i.ld, 0
  %unroll_iter539 = and i64 %wide.trip.count2247.i, 2147483646
  %lcmp.mod536.not = icmp eq i64 %xtraiter535, 0
  %lcmp.mod538 = trunc i32 %i.d to i1
  %xtraiter542 = and i64 %wide.trip.count2247.i, 3 ; 3 uses
  %i.lf = icmp ult i64 %i.ld, 3
  %unroll_iter546 = and i64 %wide.trip.count2247.i, 2147483644
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  %lcmp.mod545 = icmp ne i64 %xtraiter542, 0
  br label %_ZN4ncnn3MatD2Ev.exit1302.i

_ZN4ncnn3MatD2Ev.exit1303.i:                      ; preds = %._crit_edge1683.split.i, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i
  %indvars.iv2215.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next2216.i, %._crit_edge1683.split.i ] ; 3 uses
  %indvars.iv.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1303.lr.ph.i ], [ %indvars.iv.next.i, %._crit_edge1683.split.i ] ; 2 uses
  %i.lg = sext i32 %indvars.iv.i to i64
  %i.lh = shl nsw i64 %i.lg, 2
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !18  ; 17 uses
  %i.lj = trunc i64 %indvars.iv2215.i to i32      ; 16 uses
  %i.lk = mul i32 %i.ie, %i.lj
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ll ; 2 uses
  %i.ln = lshr exact i64 %indvars.iv2215.i, 4
  %i.lo = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !297
  %i.lp = load i64, ptr %i.if, align 8, !tbaa !20, !noalias !297
  %i.lq = mul i64 %i.lp, %i.ln
  %i.lr = load i64, ptr %i.ig, align 8, !tbaa !49, !noalias !297
  %i.ls = mul i64 %i.lq, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ls ; 4 uses
  br i1 %i.m, label %.preheader1601.lr.ph.i, label %._crit_edge1625.i

.preheader1601.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1303.i
  br i1 %i.ik, label %.preheader1601.us.preheader.i, label %._crit_edge1625.thread.i

.preheader1601.us.preheader.i:                    ; preds = %.preheader1601.lr.ph.i
  %i.lu = or disjoint i32 %i.lj, 1
  %i.lv = mul i32 %i.lu, %i.ie
  %i.lw = sext i32 %i.lv to i64
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.lw
  %i.ly = or disjoint i32 %i.lj, 2
  %i.lz = mul i32 %i.ly, %i.ie
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ma
  %i.mc = or disjoint i32 %i.lj, 3
  %i.md = mul i32 %i.mc, %i.ie
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.me
  %i.mg = or disjoint i32 %i.lj, 4
  %i.mh = mul i32 %i.mg, %i.ie
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mi
  %i.mk = or disjoint i32 %i.lj, 5
  %i.ml = mul i32 %i.mk, %i.ie
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mm
  %i.mo = or disjoint i32 %i.lj, 6
  %i.mp = mul i32 %i.mo, %i.ie
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mq
  %i.ms = or disjoint i32 %i.lj, 7
  %i.mt = mul i32 %i.ms, %i.ie
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.mu
  %i.mw = or disjoint i32 %i.lj, 8
  %i.mx = mul i32 %i.mw, %i.ie
  %i.my = sext i32 %i.mx to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.my
  %i.na = or disjoint i32 %i.lj, 9
  %i.nb = mul i32 %i.na, %i.ie
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nc
  %i.ne = or disjoint i32 %i.lj, 10
  %i.nf = mul i32 %i.ne, %i.ie
  %i.ng = sext i32 %i.nf to i64
  %i.nh = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ng
  %i.ni = or disjoint i32 %i.lj, 11
  %i.nj = mul i32 %i.ni, %i.ie
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nk
  %i.nm = or disjoint i32 %i.lj, 12
  %i.nn = mul i32 %i.nm, %i.ie
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.no
  %i.nq = or disjoint i32 %i.lj, 13
  %i.nr = mul i32 %i.nq, %i.ie
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.ns
  %i.nu = or disjoint i32 %i.lj, 14
  %i.nv = mul i32 %i.nu, %i.ie
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.nw
  %i.ny = or disjoint i32 %i.lj, 15
  %i.nz = mul i32 %i.ny, %i.ie
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.li, i64 %i.oa
  br label %.preheader1601.us.i

.preheader1601.us.i:                              ; preds = %._crit_edge.us.i, %.preheader1601.us.preheader.i
  %.010961624.us.i = phi ptr [ %i.ws, %._crit_edge.us.i ], [ %i.lm, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011011623.us.i = phi ptr [ %i.wt, %._crit_edge.us.i ], [ %i.lx, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011031622.us.i = phi ptr [ %i.wu, %._crit_edge.us.i ], [ %i.mb, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011191621.us.i = phi ptr [ %i.wv, %._crit_edge.us.i ], [ %i.mf, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011201620.us.i = phi ptr [ %i.ww, %._crit_edge.us.i ], [ %i.mj, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011261619.us.i = phi ptr [ %i.wx, %._crit_edge.us.i ], [ %i.mn, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011271618.us.i = phi ptr [ %i.wy, %._crit_edge.us.i ], [ %i.mr, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011291617.us.i = phi ptr [ %i.wz, %._crit_edge.us.i ], [ %i.mv, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011301616.us.i = phi ptr [ %i.xa, %._crit_edge.us.i ], [ %i.mz, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011321615.us.i = phi ptr [ %i.xb, %._crit_edge.us.i ], [ %i.nd, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011331614.us.i = phi ptr [ %i.xc, %._crit_edge.us.i ], [ %i.nh, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011591613.us.i = phi ptr [ %i.xd, %._crit_edge.us.i ], [ %i.nl, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011641612.us.i = phi ptr [ %i.xe, %._crit_edge.us.i ], [ %i.np, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011651611.us.i = phi ptr [ %i.xf, %._crit_edge.us.i ], [ %i.nt, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011661610.us.i = phi ptr [ %i.xg, %._crit_edge.us.i ], [ %i.nx, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011671609.us.i = phi ptr [ %i.xh, %._crit_edge.us.i ], [ %i.ob, %.preheader1601.us.preheader.i ] ; 2 uses
  %.011681608.us.i = phi ptr [ %i.wr, %._crit_edge.us.i ], [ %i.lt, %.preheader1601.us.preheader.i ]
  %.011791607.us.i = phi i32 [ %i.xi, %._crit_edge.us.i ], [ 0, %.preheader1601.us.preheader.i ]
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.preheader1601.us.i
  %indvars.iv2185.i = phi i64 [ 0, %.preheader1601.us.i ], [ %indvars.iv.next2186.i, %bb.az ] ; 17 uses
  %.111691606.us.i = phi ptr [ %.011681608.us.i, %.preheader1601.us.i ], [ %i.wr, %bb.az ] ; 17 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.010961624.us.i, i64 %indvars.iv2185.i
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.011011623.us.i, i64 %indvars.iv2185.i
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.011031622.us.i, i64 %indvars.iv2185.i
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.011191621.us.i, i64 %indvars.iv2185.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.011201620.us.i, i64 %indvars.iv2185.i
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.011261619.us.i, i64 %indvars.iv2185.i
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.011271618.us.i, i64 %indvars.iv2185.i
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.011291617.us.i, i64 %indvars.iv2185.i
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %.011301616.us.i, i64 %indvars.iv2185.i
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.011321615.us.i, i64 %indvars.iv2185.i
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.011331614.us.i, i64 %indvars.iv2185.i
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %.011591613.us.i, i64 %indvars.iv2185.i
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.011641612.us.i, i64 %indvars.iv2185.i
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %.011651611.us.i, i64 %indvars.iv2185.i
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.011661610.us.i, i64 %indvars.iv2185.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.011671609.us.i, i64 %indvars.iv2185.i
  %i.os = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oc, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ot = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.od, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ou = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oe, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ov = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.of, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ow = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.og, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ox = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oh, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oi, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.oz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oj, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pa = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ok, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.ol, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.om, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pd = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.on, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oo, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.op, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pg = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.oq, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ph = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.or, <16 x i32> %i.ij, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.pi = shufflevector <16 x float> %i.os, <16 x float> %i.ot, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pj = shufflevector <16 x float> %i.os, <16 x float> %i.ot, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pk = shufflevector <16 x float> %i.ou, <16 x float> %i.ov, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pl = shufflevector <16 x float> %i.ou, <16 x float> %i.ov, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pm = shufflevector <16 x float> %i.ow, <16 x float> %i.ox, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pn = shufflevector <16 x float> %i.ow, <16 x float> %i.ox, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.po = shufflevector <16 x float> %i.oy, <16 x float> %i.oz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pp = shufflevector <16 x float> %i.oy, <16 x float> %i.oz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.pa, <16 x float> %i.pb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.pa, <16 x float> %i.pb, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.pc, <16 x float> %i.pd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.pc, <16 x float> %i.pd, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.pe, <16 x float> %i.pf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.pe, <16 x float> %i.pf, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.pg, <16 x float> %i.ph, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.px = shufflevector <16 x float> %i.pg, <16 x float> %i.ph, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.py = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.pi, <16 x float> %i.pk, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.pj, <16 x float> %i.pl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pj, <16 x float> %i.pl, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pm, <16 x float> %i.po, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pn, <16 x float> %i.pp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pn, <16 x float> %i.pp, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.pr, <16 x float> %i.pt, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pr, <16 x float> %i.pt, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.pv, <16 x float> %i.px, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.pv, <16 x float> %i.px, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qo = shufflevector <16 x float> %i.py, <16 x float> %i.qc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qp = shufflevector <16 x float> %i.qg, <16 x float> %i.qk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qq = shufflevector <16 x float> %i.pz, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qr = shufflevector <16 x float> %i.qh, <16 x float> %i.ql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qs = shufflevector <16 x float> %i.qa, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qt = shufflevector <16 x float> %i.qi, <16 x float> %i.qm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  store <4 x i64> %i.adp, ptr %i.adh, align 32, !tbaa !50
  %i.adq = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 64
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %indvars.iv2204.i
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 4 ; 2 uses
  %i.adt = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.ads, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.adu = bitcast <16 x float> %i.adt to <16 x i32>
  %i.adv = lshr <16 x i32> %i.adu, splat (i32 16) ; 2 uses
  %i.adw = shufflevector <16 x i32> %i.adv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adx = shufflevector <16 x i32> %i.adv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ady = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.adw, <8 x i32> %i.adx)
  %i.adz = bitcast <16 x i16> %i.ady to <4 x i64>
  %i.aea = shufflevector <4 x i64> %i.adz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aea, ptr %i.adq, align 32, !tbaa !50
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.ads, i64 %i.iq
  %i.aec = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 96
  %i.aed = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aeb, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.aee = bitcast <16 x float> %i.aed to <16 x i32>
  %i.aef = lshr <16 x i32> %i.aee, splat (i32 16) ; 2 uses
  %i.aeg = shufflevector <16 x i32> %i.aef, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aeh = shufflevector <16 x i32> %i.aef, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aei = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aeg, <8 x i32> %i.aeh)
  %i.aej = bitcast <16 x i16> %i.aei to <4 x i64>
  %i.aek = shufflevector <4 x i64> %i.aej, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aek, ptr %i.aec, align 32, !tbaa !50
  %i.ael = getelementptr inbounds nuw i8, ptr %.911771667.us.i, i64 128 ; 3 uses
  %indvars.iv.next2205.i.1 = add nuw nsw i64 %indvars.iv2204.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us1674.i.unr-lcssa, label %.preheader1598.us.i.new, !llvm.loop !306

._crit_edge.us1674.i.unr-lcssa:                   ; preds = %.preheader1598.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us1674.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us1674.i.unr-lcssa, %.preheader1598.us.i
  %indvars.iv2204.i.epil.init = phi i64 [ 0, %.preheader1598.us.i ], [ %indvars.iv.next2205.i.1, %._crit_edge.us1674.i.unr-lcssa ]
  %.911771667.us.i.epil.init = phi ptr [ %.811761669.us.i, %.preheader1598.us.i ], [ %i.ael, %._crit_edge.us1674.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod526)
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %indvars.iv2204.i.epil.init ; 2 uses
  %i.aen = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aem, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.aeo = bitcast <16 x float> %i.aen to <16 x i32>
  %i.aep = lshr <16 x i32> %i.aeo, splat (i32 16) ; 2 uses
  %i.aeq = shufflevector <16 x i32> %i.aep, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aer = shufflevector <16 x i32> %i.aep, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aes = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aeq, <8 x i32> %i.aer)
  %i.aet = bitcast <16 x i16> %i.aes to <4 x i64>
  %i.aeu = shufflevector <4 x i64> %i.aet, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aeu, ptr %.911771667.us.i.epil.init, align 32, !tbaa !50
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aem, i64 %i.iq
  %i.aew = getelementptr inbounds nuw i8, ptr %.911771667.us.i.epil.init, i64 32
  %i.aex = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aev, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.aey = bitcast <16 x float> %i.aex to <16 x i32>
  %i.aez = lshr <16 x i32> %i.aey, splat (i32 16) ; 2 uses
  %i.afa = shufflevector <16 x i32> %i.aez, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afb = shufflevector <16 x i32> %i.aez, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afc = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afa, <8 x i32> %i.afb)
  %i.afd = bitcast <16 x i16> %i.afc to <4 x i64>
  %i.afe = shufflevector <4 x i64> %i.afd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.afe, ptr %i.aew, align 32, !tbaa !50
  %i.aff = getelementptr inbounds nuw i8, ptr %.911771667.us.i.epil.init, i64 64
  br label %._crit_edge.us1674.i

._crit_edge.us1674.i:                             ; preds = %._crit_edge.us1674.i.unr-lcssa, %.epil.preheader
  %.lcssa521 = phi ptr [ %i.ael, %._crit_edge.us1674.i.unr-lcssa ], [ %i.aff, %.epil.preheader ] ; 2 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.310991670.us.i, i64 %i.iw ; 2 uses
  %i.afh = add nuw nsw i32 %.311821668.us.i, 2    ; 3 uses
  %i.afi = or disjoint i32 %i.afh, 1
  %i.afj = icmp slt i32 %i.afi, %i.h
  br i1 %i.afj, label %.preheader1598.us.i, label %.preheader1602.i, !llvm.loop !307

.preheader1602.i:                                 ; preds = %._crit_edge.us1674.i, %.preheader1603.i
  %.31182.lcssa.i = phi i32 [ %.21181.lcssa.i, %.preheader1603.i ], [ %i.afh, %._crit_edge.us1674.i ] ; 2 uses
  %.81176.lcssa.i = phi ptr [ %.51173.lcssa.i, %.preheader1603.i ], [ %.lcssa521, %._crit_edge.us1674.i ]
  %.31099.lcssa.i = phi ptr [ %.21098.lcssa.i, %.preheader1603.i ], [ %i.afg, %._crit_edge.us1674.i ] ; 3 uses
  %i.afk = icmp sge i32 %.31182.lcssa.i, %i.h
  %brmerge.i = or i1 %i.ix, %i.afk
  br i1 %brmerge.i, label %._crit_edge1683.split.i, label %.preheader1597.i

.preheader1597.i:                                 ; preds = %.preheader1602.i, %._crit_edge.i
  %.111682.i = phi ptr [ %.lcssa524, %._crit_edge.i ], [ %.81176.lcssa.i, %.preheader1602.i ] ; 2 uses
  %.411831681.i = phi i32 [ %i.afv, %._crit_edge.i ], [ %.31182.lcssa.i, %.preheader1602.i ]
  br i1 %i.jm, label %.epil.preheader527, label %.preheader1597.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader1597.i.new
  br i1 %lcmp.mod529.not, label %._crit_edge.i, label %.epil.preheader527

.epil.preheader527:                               ; preds = %._crit_edge.i.unr-lcssa, %.preheader1597.i
  %indvars.iv2209.i.epil.init = phi i64 [ 0, %.preheader1597.i ], [ %indvars.iv.next2210.i.1, %._crit_edge.i.unr-lcssa ]
  %.121680.i.epil.init = phi ptr [ %.111682.i, %.preheader1597.i ], [ %i.agq, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod531)
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.31099.lcssa.i, i64 %indvars.iv2209.i.epil.init
  %i.afm = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.afl, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.afn = bitcast <16 x float> %i.afm to <16 x i32>
  %i.afo = lshr <16 x i32> %i.afn, splat (i32 16) ; 2 uses
  %i.afp = shufflevector <16 x i32> %i.afo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afq = shufflevector <16 x i32> %i.afo, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afr = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.afp, <8 x i32> %i.afq)
  %i.afs = bitcast <16 x i16> %i.afr to <4 x i64>
  %i.aft = shufflevector <4 x i64> %i.afs, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aft, ptr %.121680.i.epil.init, align 32, !tbaa !50
  %i.afu = getelementptr inbounds nuw i8, ptr %.121680.i.epil.init, i64 32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader527
  %.lcssa524 = phi ptr [ %i.agq, %._crit_edge.i.unr-lcssa ], [ %i.afu, %.epil.preheader527 ]
  %i.afv = add nuw nsw i32 %.411831681.i, 1       ; 2 uses
  %exitcond2214.not.i = icmp eq i32 %i.afv, %i.h
  br i1 %exitcond2214.not.i, label %._crit_edge1683.split.i, label %.preheader1597.i, !llvm.loop !308

.preheader1597.i.new:                             ; preds = %.preheader1597.i, %.preheader1597.i.new
  %indvars.iv2209.i = phi i64 [ %indvars.iv.next2210.i.1, %.preheader1597.i.new ], [ 0, %.preheader1597.i ] ; 3 uses
  %.121680.i = phi ptr [ %i.agq, %.preheader1597.i.new ], [ %.111682.i, %.preheader1597.i ] ; 3 uses
  %niter533 = phi i64 [ %niter533.next.1, %.preheader1597.i.new ], [ 0, %.preheader1597.i ]
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %.31099.lcssa.i, i64 %indvars.iv2209.i
  %i.afx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.afw, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.afy = bitcast <16 x float> %i.afx to <16 x i32>
  %i.afz = lshr <16 x i32> %i.afy, splat (i32 16) ; 2 uses
  %i.aga = shufflevector <16 x i32> %i.afz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agb = shufflevector <16 x i32> %i.afz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agc = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aga, <8 x i32> %i.agb)
  %i.agd = bitcast <16 x i16> %i.agc to <4 x i64>
  %i.age = shufflevector <4 x i64> %i.agd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.age, ptr %.121680.i, align 32, !tbaa !50
  %i.agf = getelementptr inbounds nuw i8, ptr %.121680.i, i64 32
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %.31099.lcssa.i, i64 %indvars.iv2209.i
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 4
  %i.agi = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.agh, <16 x i32> %i.ip, <16 x i1> splat (i1 true), i32 4)
  %i.agj = bitcast <16 x float> %i.agi to <16 x i32>
  %i.agk = lshr <16 x i32> %i.agj, splat (i32 16) ; 2 uses
  %i.agl = shufflevector <16 x i32> %i.agk, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agm = shufflevector <16 x i32> %i.agk, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agn = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.agl, <8 x i32> %i.agm)
  %i.ago = bitcast <16 x i16> %i.agn to <4 x i64>
  %i.agp = shufflevector <4 x i64> %i.ago, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.agp, ptr %i.agf, align 32, !tbaa !50
  %i.agq = getelementptr inbounds nuw i8, ptr %.121680.i, i64 64 ; 3 uses
  %indvars.iv.next2210.i.1 = add nuw nsw i64 %indvars.iv2209.i, 2 ; 2 uses
  %niter533.next.1 = add i64 %niter533, 2         ; 2 uses
  %niter533.ncmp.1 = icmp eq i64 %niter533.next.1, %unroll_iter532
  br i1 %niter533.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader1597.i.new, !llvm.loop !309

._crit_edge1683.split.i:                          ; preds = %._crit_edge.i, %.preheader1602.i, %.preheader1598.lr.ph.i, %.preheader1599.lr.ph.i
  %indvars.iv.next2216.i = add nuw nsw i64 %indvars.iv2215.i, 16 ; 3 uses
  %i.agr = or disjoint i64 %indvars.iv.next2216.i, 15
  %i.ags = icmp samesign ult i64 %i.agr, %i.jh
  %indvars.iv.next.i = add i32 %indvars.iv.i, %i.jd
  br i1 %i.ags, label %_ZN4ncnn3MatD2Ev.exit1303.i, label %.preheader1596.loopexit.i, !llvm.loop !310

.preheader1587.loopexit.i:                        ; preds = %._crit_edge1779.split.i
  %i.agt = trunc nuw nsw i64 %indvars.iv.next2279.i to i32
  br label %.preheader1587.i

.preheader1587.i:                                 ; preds = %.preheader1587.loopexit.i, %.preheader1596.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader1596.i ], [ %i.agt, %.preheader1587.loopexit.i ] ; 4 uses
  %i.agu = or disjoint i32 %.1.lcssa.i, 3         ; 2 uses
  %i.agv = icmp slt i32 %i.agu, %i.g
  br i1 %i.agv, label %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i, label %.preheader1578.i

_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i:                ; preds = %.preheader1587.i
  %i.agw = insertelement <2 x i32> poison, i32 %.1.lcssa.i, i64 0
  %i.agx = shufflevector <2 x i32> %i.agw, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.agy = or disjoint <4 x i32> %i.agx, <i32 0, i32 0, i32 0, i32 3>
  %i.agz = mul i32 %i.h, %i.d                     ; 6 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ahb = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ahc = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.ahd = shufflevector <4 x i32> %i.ahc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahe = mul <4 x i32> %i.ahd, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ahf = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.ahg = shufflevector <8 x i32> %i.ahf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ahh = mul <8 x i32> %i.ahg, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.ahi = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.ahj = shufflevector <16 x i32> %i.ahi, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ahk = mul <16 x i32> %i.ahj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ahl = icmp sgt i32 %i.h, 15
  %i.ahm = icmp sgt i32 %i.d, 0                   ; 4 uses
  %i.ahn = shl i32 %i.d, 4
  %i.aho = sext i32 %i.ahn to i64                 ; 5 uses
  %i.ahp = shl i32 %i.d, 3
  %i.ahq = sext i32 %i.ahp to i64                 ; 5 uses
  %i.ahr = shl i32 %i.d, 2
  %i.ahs = sext i32 %i.ahr to i64                 ; 4 uses
  %i.aht = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %i.ahu = shufflevector <4 x i32> %i.aht, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ahv = mul <4 x i32> %i.ahu, %i.ahe           ; 11 uses
  %i.ahw = sext i32 %i.d to i64                   ; 3 uses
  %i.ahx = shl i32 %i.d, 1
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = icmp slt i32 %i.d, 1
  %i.aia = add i32 %i.h, -16                      ; 2 uses
  %i.aib = lshr i32 %i.aia, 2
  %i.aic = and i32 %i.aib, 1073741820
  %narrow2454.i = add nuw nsw i32 %i.aic, 4
  %i.aid = zext nneg i32 %narrow2454.i to i64
  %i.aie = mul nsw i64 %i.aid, %i.aho
  %i.aif = shl i32 %i.agz, 2
  %i.aig = add nuw <4 x i32> %i.agy, <i32 0, i32 1, i32 2, i32 0>
  %i.aih = insertelement <4 x i32> poison, i32 %i.agz, i64 0
  %i.aii = shufflevector <4 x i32> %i.aih, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aij = mul <4 x i32> %i.aii, %i.aig
  %i.aik = and i32 %i.aia, -16
  %i.ail = add nuw nsw i32 %i.aik, 16             ; 4 uses
  %i.aim = add i32 %i.h, -8
  %i.ain = zext nneg i32 %.1.lcssa.i to i64
  %i.aio = sext i32 %i.g to i64
  %i.aip = or disjoint i32 %i.ail, 7
  %i.aiq = icmp slt i32 %i.aip, %i.h
  %wide.trip.count2299.i = zext i32 %i.d to i64   ; 8 uses
  %i.air = insertelement <4 x i32> poison, i32 %i.aif, i64 0
  %i.ais = shufflevector <4 x i32> %i.air, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ait = add nsw i64 %wide.trip.count2299.i, -1 ; 2 uses
  %xtraiter549 = and i64 %wide.trip.count2299.i, 1
  %i.aiu = icmp eq i64 %i.ait, 0
  %unroll_iter554 = and i64 %wide.trip.count2299.i, 2147483646
  %lcmp.mod551.not = icmp eq i64 %xtraiter549, 0
  %lcmp.mod553 = trunc i32 %i.d to i1
  %xtraiter557 = and i64 %wide.trip.count2299.i, 3 ; 3 uses
  %i.aiv = icmp ult i64 %i.ait, 3
  %unroll_iter562 = and i64 %wide.trip.count2299.i, 2147483644
  %lcmp.mod559.not = icmp eq i64 %xtraiter557, 0
  %lcmp.mod561 = icmp ne i64 %xtraiter557, 0
  br label %_ZN4ncnn3MatD2Ev.exit1301.i

_ZN4ncnn3MatD2Ev.exit1302.i:                      ; preds = %._crit_edge1779.split.i, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i
  %indvars.iv2278.i = phi i64 [ %i.ky, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2279.i, %._crit_edge1779.split.i ] ; 2 uses
  %indvars.iv2276.i = phi i32 [ %i.kz, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2277.i, %._crit_edge1779.split.i ] ; 2 uses
  %indvars.iv2219.i = phi i32 [ %i.kt, %_ZN4ncnn3MatD2Ev.exit1302.lr.ph.i ], [ %indvars.iv.next2220.i, %._crit_edge1779.split.i ] ; 2 uses
  %i.aiw = sext i32 %indvars.iv2219.i to i64
  %i.aix = shl nsw i64 %i.aiw, 2
  %i.aiy = load ptr, ptr %i.i, align 8, !tbaa !18 ; 9 uses
  %i.aiz = trunc nuw i64 %indvars.iv2278.i to i32 ; 9 uses
  %i.aja = mul i32 %i.jq, %i.aiz
  %i.ajb = sext i32 %i.aja to i64
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajb ; 2 uses
  %i.ajd = add i32 %i.aiz, 1
  %i.aje = mul i32 %i.ajd, %i.jq
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajf ; 2 uses
  %i.ajh = add i32 %i.aiz, 2
  %i.aji = mul i32 %i.ajh, %i.jq
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajj ; 2 uses
  %i.ajl = add i32 %i.aiz, 3
  %i.ajm = mul i32 %i.ajl, %i.jq
  %i.ajn = sext i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajn ; 2 uses
  %i.ajp = add i32 %i.aiz, 4
  %i.ajq = mul i32 %i.ajp, %i.jq
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajr ; 2 uses
  %i.ajt = add i32 %i.aiz, 5
  %i.aju = mul i32 %i.ajt, %i.jq
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajv ; 2 uses
  %i.ajx = add i32 %i.aiz, 6
  %i.ajy = mul i32 %i.ajx, %i.jq
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.ajz ; 2 uses
  %i.akb = mul i32 %indvars.iv2276.i, %i.jq
  %i.akc = sext i32 %i.akb to i64
  %i.akd = getelementptr inbounds [4 x i8], ptr %i.aiy, i64 %i.akc ; 2 uses
  %i.ake = lshr i32 %i.aiz, 4
  %i.akf = lshr i32 %i.aiz, 3
  %i.akg = and i32 %i.akf, 1
  %i.akh = add nuw nsw i32 %i.akg, %i.ake
  %i.aki = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !311
  %i.akj = load i64, ptr %i.jr, align 8, !tbaa !20, !noalias !311
  %i.akk = zext nneg i32 %i.akh to i64
  %i.akl = mul i64 %i.akj, %i.akk
  %i.akm = load i64, ptr %i.js, align 8, !tbaa !49, !noalias !311
  %i.akn = mul i64 %i.akl, %i.akm
  %i.ako = getelementptr inbounds nuw i8, ptr %i.aki, i64 %i.akn ; 4 uses
  br i1 %i.jz, label %.preheader1592.lr.ph.i, label %.preheader1595.i

.preheader1592.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1302.i
  br i1 %i.ka, label %.preheader1592.us.i, label %.preheader1595.thread.i

.preheader1592.us.i:                              ; preds = %.preheader1592.lr.ph.i, %._crit_edge1688.us.i
  %.012341699.us.i = phi ptr [ %i.aox, %._crit_edge1688.us.i ], [ %i.ajc, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012381698.us.i = phi ptr [ %i.aoy, %._crit_edge1688.us.i ], [ %i.ajg, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012401697.us.i = phi ptr [ %i.aoz, %._crit_edge1688.us.i ], [ %i.ajk, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012421696.us.i = phi ptr [ %i.apa, %._crit_edge1688.us.i ], [ %i.ajo, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012441695.us.i = phi ptr [ %i.apb, %._crit_edge1688.us.i ], [ %i.ajs, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012461694.us.i = phi ptr [ %i.apc, %._crit_edge1688.us.i ], [ %i.ajw, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012491693.us.i = phi ptr [ %i.apd, %._crit_edge1688.us.i ], [ %i.aka, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012511692.us.i = phi ptr [ %i.ape, %._crit_edge1688.us.i ], [ %i.akd, %.preheader1592.lr.ph.i ] ; 2 uses
  %.012531691.us.i = phi ptr [ %i.aow, %._crit_edge1688.us.i ], [ %i.ako, %.preheader1592.lr.ph.i ]
  %.012651690.us.i = phi i32 [ %i.apf, %._crit_edge1688.us.i ], [ 0, %.preheader1592.lr.ph.i ]
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.preheader1592.us.i
  %indvars.iv2244.i = phi i64 [ 0, %.preheader1592.us.i ], [ %indvars.iv.next2245.i, %bb.bc ] ; 9 uses
  %.112541687.us.i = phi ptr [ %.012531691.us.i, %.preheader1592.us.i ], [ %i.aow, %bb.bc ] ; 9 uses
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %.012341699.us.i, i64 %indvars.iv2244.i
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %.012381698.us.i, i64 %indvars.iv2244.i
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %.012401697.us.i, i64 %indvars.iv2244.i
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %.012421696.us.i, i64 %indvars.iv2244.i
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %.012441695.us.i, i64 %indvars.iv2244.i
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %.012461694.us.i, i64 %indvars.iv2244.i
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %.012491693.us.i, i64 %indvars.iv2244.i
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %.012511692.us.i, i64 %indvars.iv2244.i
  %i.akx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akp, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.aky = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akq, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.akz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akr, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ala = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aks, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.alb = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akt, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.alc = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.aku, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ald = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akv, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.ale = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.akw, <16 x i32> %i.jy, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.alf = shufflevector <16 x float> %i.akx, <16 x float> %i.aky, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.alg = shufflevector <16 x float> %i.akx, <16 x float> %i.aky, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.alh = shufflevector <16 x float> %i.akz, <16 x float> %i.ala, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ali = shufflevector <16 x float> %i.akz, <16 x float> %i.ala, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.alj = shufflevector <16 x float> %i.alb, <16 x float> %i.alc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.alk = shufflevector <16 x float> %i.alb, <16 x float> %i.alc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.all = shufflevector <16 x float> %i.ald, <16 x float> %i.ale, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.alm = shufflevector <16 x float> %i.ald, <16 x float> %i.ale, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aln = shufflevector <16 x float> %i.alf, <16 x float> %i.alh, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alo = shufflevector <16 x float> %i.alf, <16 x float> %i.alh, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alp = shufflevector <16 x float> %i.alg, <16 x float> %i.ali, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alq = shufflevector <16 x float> %i.alg, <16 x float> %i.ali, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alr = shufflevector <16 x float> %i.alj, <16 x float> %i.all, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.als = shufflevector <16 x float> %i.alj, <16 x float> %i.all, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alt = shufflevector <16 x float> %i.alk, <16 x float> %i.alm, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.alu = shufflevector <16 x float> %i.alk, <16 x float> %i.alm, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.alv = shufflevector <16 x float> %i.aln, <16 x float> %i.alr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alw = shufflevector <16 x float> %i.alo, <16 x float> %i.als, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alx = shufflevector <16 x float> %i.alp, <16 x float> %i.alt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aly = shufflevector <16 x float> %i.alq, <16 x float> %i.alu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.alz = shufflevector <16 x float> %i.aln, <16 x float> %i.alr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ama = shufflevector <16 x float> %i.alo, <16 x float> %i.als, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.amb = shufflevector <16 x float> %i.alp, <16 x float> %i.alt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.amc = shufflevector <16 x float> %i.alq, <16 x float> %i.alu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.amd = shufflevector <16 x float> %i.alv, <16 x float> %i.alw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ame = shufflevector <16 x float> %i.alx, <16 x float> %i.aly, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.amf = shufflevector <16 x float> %i.alz, <16 x float> %i.ama, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.amg = shufflevector <16 x float> %i.amb, <16 x float> %i.amc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.amh = shufflevector <16 x float> %i.alv, <16 x float> %i.alw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ami = shufflevector <16 x float> %i.alx, <16 x float> %i.aly, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.amj = shufflevector <16 x float> %i.alz, <16 x float> %i.ama, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.amk = shufflevector <16 x float> %i.amb, <16 x float> %i.amc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.aml = bitcast <16 x float> %i.amd to <16 x i32>
  %i.amm = lshr <16 x i32> %i.aml, splat (i32 16) ; 2 uses
  %i.amn = shufflevector <16 x i32> %i.amm, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amo = shufflevector <16 x i32> %i.amm, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amp = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.amn, <8 x i32> %i.amo)
  %i.amq = bitcast <16 x i16> %i.amp to <4 x i64>
  %i.amr = shufflevector <4 x i64> %i.amq, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amr, ptr %.112541687.us.i, align 1, !tbaa !50
  %i.ams = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 32
  %i.amt = bitcast <16 x float> %i.ame to <16 x i32>
  %i.amu = lshr <16 x i32> %i.amt, splat (i32 16) ; 2 uses
  %i.amv = shufflevector <16 x i32> %i.amu, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amw = shufflevector <16 x i32> %i.amu, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.amx = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.amv, <8 x i32> %i.amw)
  %i.amy = bitcast <16 x i16> %i.amx to <4 x i64>
  %i.amz = shufflevector <4 x i64> %i.amy, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.amz, ptr %i.ams, align 1, !tbaa !50
  %i.ana = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 64
  %i.anb = bitcast <16 x float> %i.amf to <16 x i32>
  %i.anc = lshr <16 x i32> %i.anb, splat (i32 16) ; 2 uses
  %i.and = shufflevector <16 x i32> %i.anc, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ane = shufflevector <16 x i32> %i.anc, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anf = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.and, <8 x i32> %i.ane)
  %i.ang = bitcast <16 x i16> %i.anf to <4 x i64>
  %i.anh = shufflevector <4 x i64> %i.ang, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.anh, ptr %i.ana, align 1, !tbaa !50
  %i.ani = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 96
  %i.anj = bitcast <16 x float> %i.amg to <16 x i32>
  %i.ank = lshr <16 x i32> %i.anj, splat (i32 16) ; 2 uses
  %i.anl = shufflevector <16 x i32> %i.ank, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anm = shufflevector <16 x i32> %i.ank, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ann = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.anl, <8 x i32> %i.anm)
  %i.ano = bitcast <16 x i16> %i.ann to <4 x i64>
  %i.anp = shufflevector <4 x i64> %i.ano, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.anp, ptr %i.ani, align 1, !tbaa !50
  %i.anq = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 128
  %i.anr = bitcast <16 x float> %i.amh to <16 x i32>
  %i.ans = lshr <16 x i32> %i.anr, splat (i32 16) ; 2 uses
  %i.ant = shufflevector <16 x i32> %i.ans, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anu = shufflevector <16 x i32> %i.ans, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anv = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.ant, <8 x i32> %i.anu)
  %i.anw = bitcast <16 x i16> %i.anv to <4 x i64>
  %i.anx = shufflevector <4 x i64> %i.anw, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.anx, ptr %i.anq, align 1, !tbaa !50
  %i.any = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 160
  %i.anz = bitcast <16 x float> %i.ami to <16 x i32>
  %i.aoa = lshr <16 x i32> %i.anz, splat (i32 16) ; 2 uses
  %i.aob = shufflevector <16 x i32> %i.aoa, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aoc = shufflevector <16 x i32> %i.aoa, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aod = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aob, <8 x i32> %i.aoc)
  %i.aoe = bitcast <16 x i16> %i.aod to <4 x i64>
  %i.aof = shufflevector <4 x i64> %i.aoe, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.aof, ptr %i.any, align 1, !tbaa !50
  %i.aog = getelementptr inbounds nuw i8, ptr %.112541687.us.i, i64 192
  %i.aoh = bitcast <16 x float> %i.amj to <16 x i32>
  %i.aoi = lshr <16 x i32> %i.aoh, splat (i32 16) ; 2 uses
  %i.aoj = shufflevector <16 x i32> %i.aoi, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aok = shufflevector <16 x i32> %i.aoi, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aol = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.aoj, <8 x i32> %i.aok)
  %i.aom = bitcast <16 x i16> %i.aol to <4 x i64>
  %i.aon = shufflevector <4 x i64> %i.aom, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
end_hunk_5
begin_hunk_6_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.avw = shufflevector <8 x i32> %i.avv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.avx = shufflevector <8 x i32> %i.avv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.avy = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.avw, <4 x i32> %i.avx)
  store <8 x i16> %i.avy, ptr %i.avq, align 16, !tbaa !50
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.avs, i64 %i.ki
  %i.awa = getelementptr inbounds nuw i8, ptr %.812611760.us.i, i64 48
  %i.awb = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.avz, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awc = bitcast <8 x float> %i.awb to <8 x i32>
  %i.awd = lshr <8 x i32> %i.awc, splat (i32 16)  ; 2 uses
  %i.awe = shufflevector <8 x i32> %i.awd, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awf = shufflevector <8 x i32> %i.awd, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awg = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.awe, <4 x i32> %i.awf)
  store <8 x i16> %i.awg, ptr %i.awa, align 16, !tbaa !50
  %i.awh = getelementptr inbounds nuw i8, ptr %.812611760.us.i, i64 64 ; 3 uses
  %indvars.iv.next2266.i.1 = add nuw nsw i64 %indvars.iv2265.i, 2 ; 2 uses
  %niter540.next.1 = add i64 %niter540, 2         ; 2 uses
  %niter540.ncmp.1 = icmp eq i64 %niter540.next.1, %unroll_iter539
  br i1 %niter540.ncmp.1, label %._crit_edge1762.us.i.unr-lcssa, label %.preheader1589.us.i.new, !llvm.loop !320

._crit_edge1762.us.i.unr-lcssa:                   ; preds = %.preheader1589.us.i.new
  br i1 %lcmp.mod536.not, label %._crit_edge1762.us.i, label %.epil.preheader534

.epil.preheader534:                               ; preds = %._crit_edge1762.us.i.unr-lcssa, %.preheader1589.us.i
  %indvars.iv2265.i.epil.init = phi i64 [ 0, %.preheader1589.us.i ], [ %indvars.iv.next2266.i.1, %._crit_edge1762.us.i.unr-lcssa ]
  %.812611760.us.i.epil.init = phi ptr [ %.712601765.us.i, %.preheader1589.us.i ], [ %i.awh, %._crit_edge1762.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod538)
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %.312371766.us.i, i64 %indvars.iv2265.i.epil.init ; 2 uses
  %i.awj = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.awi, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.awk = bitcast <8 x float> %i.awj to <8 x i32>
  %i.awl = lshr <8 x i32> %i.awk, splat (i32 16)  ; 2 uses
  %i.awm = shufflevector <8 x i32> %i.awl, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awn = shufflevector <8 x i32> %i.awl, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awo = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.awm, <4 x i32> %i.awn)
  store <8 x i16> %i.awo, ptr %.812611760.us.i.epil.init, align 16, !tbaa !50
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.awi, i64 %i.ki
  %i.awq = getelementptr inbounds nuw i8, ptr %.812611760.us.i.epil.init, i64 16
  %i.awr = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.awp, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.aws = bitcast <8 x float> %i.awr to <8 x i32>
  %i.awt = lshr <8 x i32> %i.aws, splat (i32 16)  ; 2 uses
  %i.awu = shufflevector <8 x i32> %i.awt, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awv = shufflevector <8 x i32> %i.awt, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aww = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.awu, <4 x i32> %i.awv)
  store <8 x i16> %i.aww, ptr %i.awq, align 16, !tbaa !50
  %i.awx = getelementptr inbounds nuw i8, ptr %.812611760.us.i.epil.init, i64 32
  br label %._crit_edge1762.us.i

._crit_edge1762.us.i:                             ; preds = %._crit_edge1762.us.i.unr-lcssa, %.epil.preheader534
  %.lcssa509 = phi ptr [ %i.awh, %._crit_edge1762.us.i.unr-lcssa ], [ %i.awx, %.epil.preheader534 ] ; 2 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %.312371766.us.i, i64 %i.km ; 2 uses
  %i.awz = add nuw nsw i32 %.312681764.us.i, 2    ; 3 uses
  %i.axa = or disjoint i32 %i.awz, 1
  %i.axb = icmp slt i32 %i.axa, %i.h
  br i1 %i.axb, label %.preheader1589.us.i, label %.preheader1593.i, !llvm.loop !321

.preheader1593.i:                                 ; preds = %._crit_edge1762.us.i, %.preheader1594.i
  %.31268.lcssa.i = phi i32 [ %.21267.lcssa.i, %.preheader1594.i ], [ %i.awz, %._crit_edge1762.us.i ] ; 2 uses
  %.71260.lcssa.i = phi ptr [ %.41257.lcssa.i, %.preheader1594.i ], [ %.lcssa509, %._crit_edge1762.us.i ]
  %.31237.lcssa.i = phi ptr [ %.21236.lcssa.i, %.preheader1594.i ], [ %i.awy, %._crit_edge1762.us.i ] ; 5 uses
  %i.axc = icmp sge i32 %.31268.lcssa.i, %i.h
  %brmerge2012.i = or i1 %i.kn, %i.axc
  br i1 %brmerge2012.i, label %._crit_edge1779.split.i, label %.preheader1588.i

.preheader1588.i:                                 ; preds = %.preheader1593.i, %._crit_edge1775.i
  %.1012631778.i = phi ptr [ %.lcssa512, %._crit_edge1775.i ], [ %.71260.lcssa.i, %.preheader1593.i ] ; 2 uses
  %.412691777.i = phi i32 [ %i.axl, %._crit_edge1775.i ], [ %.31268.lcssa.i, %.preheader1593.i ]
  br i1 %i.lf, label %.epil.preheader541, label %.preheader1588.i.new

._crit_edge1775.i.unr-lcssa:                      ; preds = %.preheader1588.i.new
  br i1 %lcmp.mod543.not, label %._crit_edge1775.i, label %.epil.preheader541

.epil.preheader541:                               ; preds = %._crit_edge1775.i.unr-lcssa, %.preheader1588.i
  %indvars.iv2270.i.epil.init = phi i64 [ 0, %.preheader1588.i ], [ %indvars.iv.next2271.i.3, %._crit_edge1775.i.unr-lcssa ]
  %.1112641773.i.epil.init = phi ptr [ %.1012631778.i, %.preheader1588.i ], [ %i.ayu, %._crit_edge1775.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod545)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader541
  %indvars.iv2270.i.epil = phi i64 [ %indvars.iv2270.i.epil.init, %.epil.preheader541 ], [ %indvars.iv.next2271.i.epil, %bb.bf ] ; 2 uses
  %.1112641773.i.epil = phi ptr [ %.1112641773.i.epil.init, %.epil.preheader541 ], [ %i.axk, %bb.bf ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader541 ], [ %epil.iter.next, %bb.bf ]
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %.31237.lcssa.i, i64 %indvars.iv2270.i.epil
  %i.axe = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.axd, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axf = bitcast <8 x float> %i.axe to <8 x i32>
  %i.axg = lshr <8 x i32> %i.axf, splat (i32 16)  ; 2 uses
  %i.axh = shufflevector <8 x i32> %i.axg, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.axi = shufflevector <8 x i32> %i.axg, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.axj = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.axh, <4 x i32> %i.axi)
  store <8 x i16> %i.axj, ptr %.1112641773.i.epil, align 16, !tbaa !50
  %i.axk = getelementptr inbounds nuw i8, ptr %.1112641773.i.epil, i64 16 ; 2 uses
  %indvars.iv.next2271.i.epil = add nuw nsw i64 %indvars.iv2270.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter542
  br i1 %epil.iter.cmp.not, label %._crit_edge1775.i, label %bb.bf, !llvm.loop !322

._crit_edge1775.i:                                ; preds = %bb.bf, %._crit_edge1775.i.unr-lcssa
  %.lcssa512 = phi ptr [ %i.ayu, %._crit_edge1775.i.unr-lcssa ], [ %i.axk, %bb.bf ]
  %i.axl = add nuw nsw i32 %.412691777.i, 1       ; 2 uses
  %exitcond2275.not.i = icmp eq i32 %i.axl, %i.h
  br i1 %exitcond2275.not.i, label %._crit_edge1779.split.i, label %.preheader1588.i, !llvm.loop !323

.preheader1588.i.new:                             ; preds = %.preheader1588.i, %.preheader1588.i.new
  %indvars.iv2270.i = phi i64 [ %indvars.iv.next2271.i.3, %.preheader1588.i.new ], [ 0, %.preheader1588.i ] ; 5 uses
  %.1112641773.i = phi ptr [ %i.ayu, %.preheader1588.i.new ], [ %.1012631778.i, %.preheader1588.i ] ; 5 uses
  %niter547 = phi i64 [ %niter547.next.3, %.preheader1588.i.new ], [ 0, %.preheader1588.i ]
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %.31237.lcssa.i, i64 %indvars.iv2270.i
  %i.axn = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %i.axm, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axo = bitcast <8 x float> %i.axn to <8 x i32>
  %i.axp = lshr <8 x i32> %i.axo, splat (i32 16)  ; 2 uses
  %i.axq = shufflevector <8 x i32> %i.axp, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.axr = shufflevector <8 x i32> %i.axp, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.axs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.axq, <4 x i32> %i.axr)
  store <8 x i16> %i.axs, ptr %.1112641773.i, align 16, !tbaa !50
  %i.axt = getelementptr inbounds nuw i8, ptr %.1112641773.i, i64 16
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr %.31237.lcssa.i, i64 %indvars.iv2270.i
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 4
  %i.axw = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.axv, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.axx = bitcast <8 x float> %i.axw to <8 x i32>
  %i.axy = lshr <8 x i32> %i.axx, splat (i32 16)  ; 2 uses
  %i.axz = shufflevector <8 x i32> %i.axy, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aya = shufflevector <8 x i32> %i.axy, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ayb = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.axz, <4 x i32> %i.aya)
  store <8 x i16> %i.ayb, ptr %i.axt, align 16, !tbaa !50
  %i.ayc = getelementptr inbounds nuw i8, ptr %.1112641773.i, i64 32
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %.31237.lcssa.i, i64 %indvars.iv2270.i
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  %i.ayf = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.aye, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ayg = bitcast <8 x float> %i.ayf to <8 x i32>
  %i.ayh = lshr <8 x i32> %i.ayg, splat (i32 16)  ; 2 uses
  %i.ayi = shufflevector <8 x i32> %i.ayh, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ayj = shufflevector <8 x i32> %i.ayh, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ayk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ayi, <4 x i32> %i.ayj)
  store <8 x i16> %i.ayk, ptr %i.ayc, align 16, !tbaa !50
  %i.ayl = getelementptr inbounds nuw i8, ptr %.1112641773.i, i64 48
  %i.aym = getelementptr inbounds nuw [4 x i8], ptr %.31237.lcssa.i, i64 %indvars.iv2270.i
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 12
  %i.ayo = tail call fast <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr nonnull %i.ayn, <8 x i32> %i.kh, <8 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.ayp = bitcast <8 x float> %i.ayo to <8 x i32>
  %i.ayq = lshr <8 x i32> %i.ayp, splat (i32 16)  ; 2 uses
  %i.ayr = shufflevector <8 x i32> %i.ayq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ays = shufflevector <8 x i32> %i.ayq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ayt = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.ayr, <4 x i32> %i.ays)
  store <8 x i16> %i.ayt, ptr %i.ayl, align 16, !tbaa !50
  %i.ayu = getelementptr inbounds nuw i8, ptr %.1112641773.i, i64 64 ; 3 uses
  %indvars.iv.next2271.i.3 = add nuw nsw i64 %indvars.iv2270.i, 4 ; 2 uses
  %niter547.next.3 = add i64 %niter547, 4         ; 2 uses
  %niter547.ncmp.3 = icmp eq i64 %niter547.next.3, %unroll_iter546
  br i1 %niter547.ncmp.3, label %._crit_edge1775.i.unr-lcssa, label %.preheader1588.i.new, !llvm.loop !324

._crit_edge1779.split.i:                          ; preds = %._crit_edge1775.i, %.preheader1593.i, %.preheader1589.lr.ph.i, %.preheader1590.lr.ph.i
  %indvars.iv.next2279.i = add nuw nsw i64 %indvars.iv2278.i, 8 ; 3 uses
  %i.ayv = icmp slt i64 %indvars.iv.next2279.i, %invariant.op.i
  %indvars.iv.next2220.i = add i32 %indvars.iv2219.i, %i.ku
  %indvars.iv.next2277.i = add i32 %indvars.iv2276.i, 8
  br i1 %i.ayv, label %_ZN4ncnn3MatD2Ev.exit1302.i, label %.preheader1587.loopexit.i, !llvm.loop !325

.preheader1578.loopexit.i:                        ; preds = %._crit_edge1865.split.i
  %i.ayw = trunc nsw i64 %indvars.iv.next2331.i to i32
  br label %.preheader1578.i

.preheader1578.i:                                 ; preds = %.preheader1578.loopexit.i, %.preheader1587.i
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1587.i ], [ %i.ayw, %.preheader1578.loopexit.i ] ; 4 uses
  %i.ayx = or disjoint i32 %.2.lcssa.i, 1         ; 3 uses
  %i.ayy = icmp slt i32 %i.ayx, %i.g
  br i1 %i.ayy, label %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i, label %.preheader1568.i

_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i:                ; preds = %.preheader1578.i
  %i.ayz = mul i32 %i.h, %i.d                     ; 5 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.azb = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.azc = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.azd = shufflevector <4 x i32> %i.azc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aze = mul <4 x i32> %i.azd, <i32 0, i32 1, i32 2, i32 3> ; 6 uses
  %i.azf = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.azg = shufflevector <8 x i32> %i.azf, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.azh = mul <8 x i32> %i.azg, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 6 uses
  %i.azi = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.azj = shufflevector <16 x i32> %i.azi, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.azk = mul <16 x i32> %i.azj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 6 uses
  %i.azl = icmp sgt i32 %i.h, 15
  %i.azm = icmp sgt i32 %i.d, 0                   ; 4 uses
  %i.azn = shl i32 %i.d, 4
  %i.azo = sext i32 %i.azn to i64                 ; 3 uses
  %i.azp = shl i32 %i.d, 3
  %i.azq = sext i32 %i.azp to i64                 ; 3 uses
  %i.azr = shl i32 %i.d, 2
  %i.azs = sext i32 %i.azr to i64                 ; 2 uses
  %i.azt = sext i32 %i.d to i64                   ; 6 uses
  %i.azu = shl i32 %i.d, 1
  %i.azv = sext i32 %i.azu to i64                 ; 2 uses
  %i.azw = icmp slt i32 %i.d, 1
  %i.azx = add i32 %i.h, -16                      ; 2 uses
  %i.azy = lshr i32 %i.azx, 2
  %i.azz = and i32 %i.azy, 1073741820
  %narrow2456.i = add nuw nsw i32 %i.azz, 4
  %i.baa = zext nneg i32 %narrow2456.i to i64
  %i.bab = mul nsw i64 %i.baa, %i.azo
  %i.bac = mul i32 %i.ayz, %.2.lcssa.i
  %i.bad = shl i32 %i.ayz, 1                      ; 2 uses
  %i.bae = mul i32 %i.ayx, %i.ayz
  %i.baf = and i32 %i.azx, -16
  %i.bag = add nuw nsw i32 %i.baf, 16             ; 4 uses
  %i.bah = add i32 %i.h, -8
  %i.bai = sext i32 %.2.lcssa.i to i64
  %i.baj = sext i32 %i.g to i64
  %i.bak = or disjoint i32 %i.bag, 7
  %i.bal = icmp slt i32 %i.bak, %i.h
  %wide.trip.count2343.i = zext i32 %i.d to i64   ; 19 uses
  %i.bam = add nsw i64 %wide.trip.count2343.i, -1 ; 3 uses
  %xtraiter565 = and i64 %wide.trip.count2343.i, 1
  %i.ban = icmp eq i64 %i.bam, 0
  %unroll_iter570 = and i64 %wide.trip.count2343.i, 2147483646
  %lcmp.mod567.not = icmp eq i64 %xtraiter565, 0
  %lcmp.mod569 = trunc i32 %i.d to i1
  %xtraiter573 = and i64 %wide.trip.count2343.i, 1
  %i.bao = icmp eq i64 %i.bam, 0
  %unroll_iter578 = and i64 %wide.trip.count2343.i, 2147483646
  %lcmp.mod575.not = icmp eq i64 %xtraiter573, 0
  %lcmp.mod577 = trunc i32 %i.d to i1
  %xtraiter581 = and i64 %wide.trip.count2343.i, 1
  %i.bap = icmp eq i64 %i.bam, 0
  %unroll_iter586 = and i64 %wide.trip.count2343.i, 2147483646
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  %lcmp.mod585 = trunc i32 %i.d to i1
  %min.iters.check336 = icmp ult i32 %i.d, 4
  %min.iters.check338 = icmp ult i32 %i.d, 16
  %i.baq = and i64 %wide.trip.count2343.i, 12
  %n.vec340 = and i64 %wide.trip.count2343.i, 2147483632 ; 5 uses
  %i.bar = shl nuw nsw i64 %n.vec340, 3
  %cmp.n351 = icmp eq i64 %n.vec340, %wide.trip.count2343.i
  %min.epilog.iters.check356 = icmp eq i64 %i.baq, 0
  %n.vec358 = and i64 %wide.trip.count2343.i, 2147483644 ; 4 uses
  %i.bas = shl nuw nsw i64 %n.vec358, 3
  %cmp.n369 = icmp eq i64 %n.vec358, %wide.trip.count2343.i
  %min.iters.check = icmp ult i32 %i.d, 4
  %min.iters.check324 = icmp ult i32 %i.d, 16
  %i.bat = and i64 %wide.trip.count2343.i, 12
  %n.vec = and i64 %wide.trip.count2343.i, 2147483632 ; 5 uses
  %i.bau = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count2343.i
  %min.epilog.iters.check = icmp eq i64 %i.bat, 0
  %n.vec326 = and i64 %wide.trip.count2343.i, 2147483644 ; 4 uses
  %i.bav = shl nuw nsw i64 %n.vec326, 2
  %cmp.n333 = icmp eq i64 %n.vec326, %wide.trip.count2343.i
  br label %_ZN4ncnn3MatD2Ev.exit1300.i

_ZN4ncnn3MatD2Ev.exit1301.i:                      ; preds = %._crit_edge1865.split.i, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i
  %indvars.iv2330.i = phi i64 [ %i.ain, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %indvars.iv.next2331.i, %._crit_edge1865.split.i ] ; 2 uses
  %i.baw = phi i32 [ %i.agu, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %i.bmm, %._crit_edge1865.split.i ]
  %i.bax = phi <4 x i32> [ %i.aij, %_ZN4ncnn3MatD2Ev.exit1301.lr.ph.i ], [ %i.bml, %._crit_edge1865.split.i ] ; 2 uses
  %i.bay = sext <4 x i32> %i.bax to <4 x i64>
  %i.baz = shl nsw <4 x i64> %i.bay, splat (i64 2) ; 4 uses
  %i.bba = load ptr, ptr %i.i, align 8, !tbaa !18 ; 5 uses
  %i.bbb = trunc i64 %indvars.iv2330.i to i32     ; 6 uses
  %i.bbc = mul i32 %i.agz, %i.bbb
  %i.bbd = sext i32 %i.bbc to i64
  %i.bbe = getelementptr inbounds [4 x i8], ptr %i.bba, i64 %i.bbd ; 2 uses
  %i.bbf = add i32 %i.bbb, 1
  %i.bbg = mul i32 %i.bbf, %i.agz
  %i.bbh = sext i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds [4 x i8], ptr %i.bba, i64 %i.bbh ; 2 uses
  %i.bbj = add i32 %i.bbb, 2
  %i.bbk = mul i32 %i.bbj, %i.agz
  %i.bbl = sext i32 %i.bbk to i64
  %i.bbm = getelementptr inbounds [4 x i8], ptr %i.bba, i64 %i.bbl ; 2 uses
  %i.bbn = mul i32 %i.baw, %i.agz
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = getelementptr inbounds [4 x i8], ptr %i.bba, i64 %i.bbo ; 2 uses
  %i.bbq = lshr i32 %i.bbb, 4
  %i.bbr = lshr i32 %i.bbb, 3
  %i.bbs = and i32 %i.bbr, 1
  %i.bbt = add nuw nsw i32 %i.bbs, %i.bbq
  %i.bbu = lshr i32 %i.bbb, 2
  %i.bbv = and i32 %i.bbu, 1
  %i.bbw = add nuw nsw i32 %i.bbt, %i.bbv
  %i.bbx = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !326
  %i.bby = load i64, ptr %i.aha, align 8, !tbaa !20, !noalias !326
  %i.bbz = zext nneg i32 %i.bbw to i64
  %i.bca = mul i64 %i.bby, %i.bbz
  %i.bcb = load i64, ptr %i.ahb, align 8, !tbaa !49, !noalias !326
  %i.bcc = mul i64 %i.bca, %i.bcb
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbx, i64 %i.bcc ; 4 uses
  br i1 %i.ahl, label %.preheader1583.lr.ph.i, label %.preheader1586.i

.preheader1583.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1301.i
  br i1 %i.ahm, label %.preheader1583.us.i, label %.preheader1586.thread.i

.preheader1583.us.i:                              ; preds = %.preheader1583.lr.ph.i, %._crit_edge1784.us.i
  %.011951791.us.i = phi i32 [ %i.bei, %._crit_edge1784.us.i ], [ 0, %.preheader1583.lr.ph.i ]
  %.012001790.us.i = phi ptr [ %i.bed, %._crit_edge1784.us.i ], [ %i.bcd, %.preheader1583.lr.ph.i ]
  %.012111789.us.i = phi ptr [ %i.beh, %._crit_edge1784.us.i ], [ %i.bbp, %.preheader1583.lr.ph.i ] ; 2 uses
  %.012141788.us.i = phi ptr [ %i.beg, %._crit_edge1784.us.i ], [ %i.bbm, %.preheader1583.lr.ph.i ] ; 2 uses
  %.012171787.us.i = phi ptr [ %i.bef, %._crit_edge1784.us.i ], [ %i.bbi, %.preheader1583.lr.ph.i ] ; 2 uses
  %.012201786.us.i = phi ptr [ %i.bee, %._crit_edge1784.us.i ], [ %i.bbe, %.preheader1583.lr.ph.i ] ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.preheader1583.us.i
  %indvars.iv2296.i = phi i64 [ 0, %.preheader1583.us.i ], [ %indvars.iv.next2297.i, %bb.bg ] ; 5 uses
  %.112011782.us.i = phi ptr [ %.012001790.us.i, %.preheader1583.us.i ], [ %i.bed, %bb.bg ] ; 5 uses
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.012201786.us.i, i64 %indvars.iv2296.i
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %.012171787.us.i, i64 %indvars.iv2296.i
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %.012141788.us.i, i64 %indvars.iv2296.i
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %.012111789.us.i, i64 %indvars.iv2296.i
  %i.bci = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bce, <16 x i32> %i.ahk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bcj = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bcf, <16 x i32> %i.ahk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bck = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bcg, <16 x i32> %i.ahk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bcl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bch, <16 x i32> %i.ahk, <16 x i1> splat (i1 true), i32 4) ; 2 uses
  %i.bcm = shufflevector <16 x float> %i.bci, <16 x float> %i.bcj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bcn = shufflevector <16 x float> %i.bci, <16 x float> %i.bcj, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bco = shufflevector <16 x float> %i.bck, <16 x float> %i.bcl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.bcp = shufflevector <16 x float> %i.bck, <16 x float> %i.bcl, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bcq = shufflevector <16 x float> %i.bcm, <16 x float> %i.bco, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bcr = shufflevector <16 x float> %i.bcn, <16 x float> %i.bcp, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.bcs = shufflevector <16 x float> %i.bcm, <16 x float> %i.bco, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bct = shufflevector <16 x float> %i.bcn, <16 x float> %i.bcp, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.bcu = shufflevector <16 x float> %i.bcq, <16 x float> %i.bcr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bcv = shufflevector <16 x float> %i.bcs, <16 x float> %i.bct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.bcw = shufflevector <16 x float> %i.bcq, <16 x float> %i.bcr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bcx = shufflevector <16 x float> %i.bcs, <16 x float> %i.bct, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.bcy = bitcast <16 x float> %i.bcu to <16 x i32>
  %i.bcz = lshr <16 x i32> %i.bcy, splat (i32 16) ; 2 uses
  %i.bda = shufflevector <16 x i32> %i.bcz, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdb = shufflevector <16 x i32> %i.bcz, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdc = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bda, <8 x i32> %i.bdb)
  %i.bdd = bitcast <16 x i16> %i.bdc to <4 x i64>
  %i.bde = shufflevector <4 x i64> %i.bdd, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bde, ptr %.112011782.us.i, align 1, !tbaa !50
  %i.bdf = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 32
  %i.bdg = bitcast <16 x float> %i.bcv to <16 x i32>
  %i.bdh = lshr <16 x i32> %i.bdg, splat (i32 16) ; 2 uses
  %i.bdi = shufflevector <16 x i32> %i.bdh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdj = shufflevector <16 x i32> %i.bdh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdk = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdi, <8 x i32> %i.bdj)
  %i.bdl = bitcast <16 x i16> %i.bdk to <4 x i64>
  %i.bdm = shufflevector <4 x i64> %i.bdl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdm, ptr %i.bdf, align 1, !tbaa !50
  %i.bdn = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 64
  %i.bdo = bitcast <16 x float> %i.bcw to <16 x i32>
  %i.bdp = lshr <16 x i32> %i.bdo, splat (i32 16) ; 2 uses
  %i.bdq = shufflevector <16 x i32> %i.bdp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdr = shufflevector <16 x i32> %i.bdp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bds = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdq, <8 x i32> %i.bdr)
  %i.bdt = bitcast <16 x i16> %i.bds to <4 x i64>
  %i.bdu = shufflevector <4 x i64> %i.bdt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bdu, ptr %i.bdn, align 1, !tbaa !50
  %i.bdv = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 96
  %i.bdw = bitcast <16 x float> %i.bcx to <16 x i32>
  %i.bdx = lshr <16 x i32> %i.bdw, splat (i32 16) ; 2 uses
  %i.bdy = shufflevector <16 x i32> %i.bdx, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bdz = shufflevector <16 x i32> %i.bdx, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bea = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bdy, <8 x i32> %i.bdz)
  %i.beb = bitcast <16 x i16> %i.bea to <4 x i64>
  %i.bec = shufflevector <4 x i64> %i.beb, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bec, ptr %i.bdv, align 1, !tbaa !50
  %i.bed = getelementptr inbounds nuw i8, ptr %.112011782.us.i, i64 128 ; 3 uses
  %indvars.iv.next2297.i = add nuw nsw i64 %indvars.iv2296.i, 1 ; 2 uses
  %exitcond2300.not.i = icmp eq i64 %indvars.iv.next2297.i, %wide.trip.count2299.i
  br i1 %exitcond2300.not.i, label %._crit_edge1784.us.i, label %bb.bg, !llvm.loop !329

._crit_edge1784.us.i:                             ; preds = %bb.bg
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %.012201786.us.i, i64 %i.aho ; 2 uses
  %i.bef = getelementptr inbounds nuw [4 x i8], ptr %.012171787.us.i, i64 %i.aho ; 2 uses
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %.012141788.us.i, i64 %i.aho ; 2 uses
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %.012111789.us.i, i64 %i.aho ; 2 uses
  %i.bei = add nuw nsw i32 %.011951791.us.i, 16   ; 2 uses
  %i.bej = or disjoint i32 %i.bei, 15
  %i.bek = icmp slt i32 %i.bej, %i.h
  br i1 %i.bek, label %.preheader1583.us.i, label %.preheader1586.i, !llvm.loop !330

.preheader1586.i:                                 ; preds = %._crit_edge1784.us.i, %_ZN4ncnn3MatD2Ev.exit1301.i
  %.01220.lcssa.i = phi ptr [ %i.bbe, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bee, %._crit_edge1784.us.i ] ; 3 uses
  %.01217.lcssa.i = phi ptr [ %i.bbi, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bef, %._crit_edge1784.us.i ] ; 3 uses
  %.01214.lcssa.i = phi ptr [ %i.bbm, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.beg, %._crit_edge1784.us.i ] ; 3 uses
  %.01211.lcssa.i = phi ptr [ %i.bbp, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.beh, %._crit_edge1784.us.i ] ; 3 uses
  %.01200.lcssa.i = phi ptr [ %i.bcd, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.bed, %._crit_edge1784.us.i ] ; 3 uses
  %.01195.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1301.i ], [ %i.ail, %._crit_edge1784.us.i ] ; 4 uses
  %i.bel = or disjoint i32 %.01195.lcssa.i, 7
  %i.bem = icmp slt i32 %i.bel, %i.h
  br i1 %i.bem, label %.preheader1582.lr.ph.i, label %.preheader1585.i

.preheader1586.thread.i:                          ; preds = %.preheader1583.lr.ph.i
  %scevgep2283.i = getelementptr i8, ptr %i.bba, i64 %i.aie ; 4 uses
  %i.ben = extractelement <4 x i64> %i.baz, i64 0
  %scevgep2286.i = getelementptr i8, ptr %scevgep2283.i, i64 %i.ben ; 2 uses
  %i.beo = extractelement <4 x i64> %i.baz, i64 1
  %scevgep2289.i = getelementptr i8, ptr %scevgep2283.i, i64 %i.beo ; 2 uses
  %i.bep = extractelement <4 x i64> %i.baz, i64 2
  %scevgep2292.i = getelementptr i8, ptr %scevgep2283.i, i64 %i.bep ; 2 uses
  %i.beq = extractelement <4 x i64> %i.baz, i64 3
  %scevgep2295.i = getelementptr i8, ptr %scevgep2283.i, i64 %i.beq ; 2 uses
  br i1 %i.aiq, label %.preheader1582.preheader.i, label %.preheader1585.i

.preheader1582.lr.ph.i:                           ; preds = %.preheader1586.i
  br i1 %i.ahm, label %.preheader1582.us.i, label %.preheader1582.preheader.i

.preheader1582.preheader.i:                       ; preds = %.preheader1582.lr.ph.i, %.preheader1586.thread.i
  %.01220.lcssa25432560.i = phi ptr [ %.01220.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2286.i, %.preheader1586.thread.i ]
  %.01217.lcssa25442559.i = phi ptr [ %.01217.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2289.i, %.preheader1586.thread.i ]
  %.01214.lcssa25452558.i = phi ptr [ %.01214.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2292.i, %.preheader1586.thread.i ]
  %.01211.lcssa25462557.i = phi ptr [ %.01211.lcssa.i, %.preheader1582.lr.ph.i ], [ %scevgep2295.i, %.preheader1586.thread.i ]
  %.01200.lcssa25472556.i = phi ptr [ %.01200.lcssa.i, %.preheader1582.lr.ph.i ], [ %i.bcd, %.preheader1586.thread.i ]
  %.01195.lcssa25482555.i = phi i32 [ %.01195.lcssa.i, %.preheader1582.lr.ph.i ], [ %i.ail, %.preheader1586.thread.i ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnn24Convolution1D_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.bji = bitcast <4 x float> %i.bjh to <4 x i32>
  %i.bjj = lshr <4 x i32> %i.bji, splat (i32 16)
  %i.bjk = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjj, <4 x i32> poison)
  %i.bjl = bitcast <8 x i16> %i.bjk to <2 x i64>
  %i.bjm = extractelement <2 x i64> %i.bjl, i64 0
  store i64 %i.bjm, ptr %i.bje, align 1, !tbaa !50
  %i.bjn = getelementptr inbounds nuw [4 x i8], ptr %i.bjg, i64 %i.ahw
  %i.bjo = getelementptr inbounds nuw i8, ptr %.712071846.us.i, i64 24
  %i.bjp = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bjn, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bjq = bitcast <4 x float> %i.bjp to <4 x i32>
  %i.bjr = lshr <4 x i32> %i.bjq, splat (i32 16)
  %i.bjs = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjr, <4 x i32> poison)
  %i.bjt = bitcast <8 x i16> %i.bjs to <2 x i64>
  %i.bju = extractelement <2 x i64> %i.bjt, i64 0
  store i64 %i.bju, ptr %i.bjo, align 1, !tbaa !50
  %i.bjv = getelementptr inbounds nuw i8, ptr %.712071846.us.i, i64 32 ; 3 uses
  %indvars.iv.next2320.i.1 = add nuw nsw i64 %indvars.iv2319.i, 2 ; 2 uses
  %niter555.next.1 = add i64 %niter555, 2         ; 2 uses
  %niter555.ncmp.1 = icmp eq i64 %niter555.next.1, %unroll_iter554
  br i1 %niter555.ncmp.1, label %._crit_edge1848.us.i.unr-lcssa, label %.preheader1580.us.i.new, !llvm.loop !335

._crit_edge1848.us.i.unr-lcssa:                   ; preds = %.preheader1580.us.i.new
  br i1 %lcmp.mod551.not, label %._crit_edge1848.us.i, label %.epil.preheader548

.epil.preheader548:                               ; preds = %._crit_edge1848.us.i.unr-lcssa, %.preheader1580.us.i
  %indvars.iv2319.i.epil.init = phi i64 [ 0, %.preheader1580.us.i ], [ %indvars.iv.next2320.i.1, %._crit_edge1848.us.i.unr-lcssa ]
  %.712071846.us.i.epil.init = phi ptr [ %.612061851.us.i, %.preheader1580.us.i ], [ %i.bjv, %._crit_edge1848.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod553)
  %i.bjw = getelementptr inbounds nuw [4 x i8], ptr %.312231850.us.i, i64 %indvars.iv2319.i.epil.init ; 2 uses
  %i.bjx = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bjw, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bjy = bitcast <4 x float> %i.bjx to <4 x i32>
  %i.bjz = lshr <4 x i32> %i.bjy, splat (i32 16)
  %i.bka = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bjz, <4 x i32> poison)
  %i.bkb = bitcast <8 x i16> %i.bka to <2 x i64>
  %i.bkc = extractelement <2 x i64> %i.bkb, i64 0
  store i64 %i.bkc, ptr %.712071846.us.i.epil.init, align 1, !tbaa !50
  %i.bkd = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.ahw
  %i.bke = getelementptr inbounds nuw i8, ptr %.712071846.us.i.epil.init, i64 8
  %i.bkf = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bkd, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkg = bitcast <4 x float> %i.bkf to <4 x i32>
  %i.bkh = lshr <4 x i32> %i.bkg, splat (i32 16)
  %i.bki = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bkh, <4 x i32> poison)
  %i.bkj = bitcast <8 x i16> %i.bki to <2 x i64>
  %i.bkk = extractelement <2 x i64> %i.bkj, i64 0
  store i64 %i.bkk, ptr %i.bke, align 1, !tbaa !50
  %i.bkl = getelementptr inbounds nuw i8, ptr %.712071846.us.i.epil.init, i64 16
  br label %._crit_edge1848.us.i

._crit_edge1848.us.i:                             ; preds = %._crit_edge1848.us.i.unr-lcssa, %.epil.preheader548
  %.lcssa490 = phi ptr [ %i.bjv, %._crit_edge1848.us.i.unr-lcssa ], [ %i.bkl, %.epil.preheader548 ] ; 2 uses
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %.312231850.us.i, i64 %i.ahy ; 2 uses
  %i.bkn = add nuw nsw i32 %.311981852.us.i, 2    ; 3 uses
  %i.bko = or disjoint i32 %i.bkn, 1
  %i.bkp = icmp slt i32 %i.bko, %i.h
  br i1 %i.bkp, label %.preheader1580.us.i, label %.preheader1584.i, !llvm.loop !336

.preheader1584.i:                                 ; preds = %._crit_edge1848.us.i, %._crit_edge1836.i
  %.31223.lcssa.i = phi ptr [ %.21222.lcssa.i, %._crit_edge1836.i ], [ %i.bkm, %._crit_edge1848.us.i ] ; 5 uses
  %.61206.lcssa.i = phi ptr [ %.41204.lcssa.i, %._crit_edge1836.i ], [ %.lcssa490, %._crit_edge1848.us.i ]
  %.31198.lcssa.i = phi i32 [ %.21197.lcssa.i, %._crit_edge1836.i ], [ %i.bkn, %._crit_edge1848.us.i ] ; 2 uses
  %i.bkq = icmp sge i32 %.31198.lcssa.i, %i.h
  %brmerge2015.i = or i1 %i.ahz, %i.bkq
  br i1 %brmerge2015.i, label %._crit_edge1865.split.i, label %.preheader1579.i

.preheader1579.i:                                 ; preds = %.preheader1584.i, %._crit_edge1861.i
  %.411991864.i = phi i32 [ %i.bkz, %._crit_edge1861.i ], [ %.31198.lcssa.i, %.preheader1584.i ]
  %.912091863.i = phi ptr [ %.lcssa493, %._crit_edge1861.i ], [ %.61206.lcssa.i, %.preheader1584.i ] ; 2 uses
  br i1 %i.aiv, label %.epil.preheader556, label %.preheader1579.i.new

._crit_edge1861.i.unr-lcssa:                      ; preds = %.preheader1579.i.new
  br i1 %lcmp.mod559.not, label %._crit_edge1861.i, label %.epil.preheader556

.epil.preheader556:                               ; preds = %._crit_edge1861.i.unr-lcssa, %.preheader1579.i
  %indvars.iv2324.i.epil.init = phi i64 [ 0, %.preheader1579.i ], [ %indvars.iv.next2325.i.3, %._crit_edge1861.i.unr-lcssa ]
  %.1012101859.i.epil.init = phi ptr [ %.912091863.i, %.preheader1579.i ], [ %i.bmi, %._crit_edge1861.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod561)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.epil.preheader556
  %indvars.iv2324.i.epil = phi i64 [ %indvars.iv2324.i.epil.init, %.epil.preheader556 ], [ %indvars.iv.next2325.i.epil, %bb.bj ] ; 2 uses
  %.1012101859.i.epil = phi ptr [ %.1012101859.i.epil.init, %.epil.preheader556 ], [ %i.bky, %bb.bj ] ; 2 uses
  %epil.iter558 = phi i64 [ 0, %.epil.preheader556 ], [ %epil.iter558.next, %bb.bj ]
  %i.bkr = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2324.i.epil
  %i.bks = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bkr, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bkt = bitcast <4 x float> %i.bks to <4 x i32>
  %i.bku = lshr <4 x i32> %i.bkt, splat (i32 16)
  %i.bkv = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bku, <4 x i32> poison)
  %i.bkw = bitcast <8 x i16> %i.bkv to <2 x i64>
  %i.bkx = extractelement <2 x i64> %i.bkw, i64 0
  store i64 %i.bkx, ptr %.1012101859.i.epil, align 1, !tbaa !50
  %i.bky = getelementptr inbounds nuw i8, ptr %.1012101859.i.epil, i64 8 ; 2 uses
  %indvars.iv.next2325.i.epil = add nuw nsw i64 %indvars.iv2324.i.epil, 1
  %epil.iter558.next = add i64 %epil.iter558, 1   ; 2 uses
  %epil.iter558.cmp.not = icmp eq i64 %epil.iter558.next, %xtraiter557
  br i1 %epil.iter558.cmp.not, label %._crit_edge1861.i, label %bb.bj, !llvm.loop !337

._crit_edge1861.i:                                ; preds = %bb.bj, %._crit_edge1861.i.unr-lcssa
  %.lcssa493 = phi ptr [ %i.bmi, %._crit_edge1861.i.unr-lcssa ], [ %i.bky, %bb.bj ]
  %i.bkz = add nuw nsw i32 %.411991864.i, 1       ; 2 uses
  %exitcond2329.not.i = icmp eq i32 %i.bkz, %i.h
  br i1 %exitcond2329.not.i, label %._crit_edge1865.split.i, label %.preheader1579.i, !llvm.loop !338

.preheader1579.i.new:                             ; preds = %.preheader1579.i, %.preheader1579.i.new
  %indvars.iv2324.i = phi i64 [ %indvars.iv.next2325.i.3, %.preheader1579.i.new ], [ 0, %.preheader1579.i ] ; 5 uses
  %.1012101859.i = phi ptr [ %i.bmi, %.preheader1579.i.new ], [ %.912091863.i, %.preheader1579.i ] ; 5 uses
  %niter563 = phi i64 [ %niter563.next.3, %.preheader1579.i.new ], [ 0, %.preheader1579.i ]
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2324.i
  %i.blb = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %i.bla, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blc = bitcast <4 x float> %i.blb to <4 x i32>
  %i.bld = lshr <4 x i32> %i.blc, splat (i32 16)
  %i.ble = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bld, <4 x i32> poison)
  %i.blf = bitcast <8 x i16> %i.ble to <2 x i64>
  %i.blg = extractelement <2 x i64> %i.blf, i64 0
  store i64 %i.blg, ptr %.1012101859.i, align 1, !tbaa !50
  %i.blh = getelementptr inbounds nuw i8, ptr %.1012101859.i, i64 8
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2324.i
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bli, i64 4
  %i.blk = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.blj, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bll = bitcast <4 x float> %i.blk to <4 x i32>
  %i.blm = lshr <4 x i32> %i.bll, splat (i32 16)
  %i.bln = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blm, <4 x i32> poison)
  %i.blo = bitcast <8 x i16> %i.bln to <2 x i64>
  %i.blp = extractelement <2 x i64> %i.blo, i64 0
  store i64 %i.blp, ptr %i.blh, align 1, !tbaa !50
  %i.blq = getelementptr inbounds nuw i8, ptr %.1012101859.i, i64 16
  %i.blr = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2324.i
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 8
  %i.blt = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bls, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.blu = bitcast <4 x float> %i.blt to <4 x i32>
  %i.blv = lshr <4 x i32> %i.blu, splat (i32 16)
  %i.blw = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.blv, <4 x i32> poison)
  %i.blx = bitcast <8 x i16> %i.blw to <2 x i64>
  %i.bly = extractelement <2 x i64> %i.blx, i64 0
  store i64 %i.bly, ptr %i.blq, align 1, !tbaa !50
  %i.blz = getelementptr inbounds nuw i8, ptr %.1012101859.i, i64 24
  %i.bma = getelementptr inbounds nuw [4 x i8], ptr %.31223.lcssa.i, i64 %indvars.iv2324.i
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 12
  %i.bmc = tail call fast <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr nonnull %i.bmb, <4 x i32> %i.ahv, <4 x float> splat (float -nan(0x3FFFFF)), i8 4)
  %i.bmd = bitcast <4 x float> %i.bmc to <4 x i32>
  %i.bme = lshr <4 x i32> %i.bmd, splat (i32 16)
  %i.bmf = tail call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bme, <4 x i32> poison)
  %i.bmg = bitcast <8 x i16> %i.bmf to <2 x i64>
  %i.bmh = extractelement <2 x i64> %i.bmg, i64 0
  store i64 %i.bmh, ptr %i.blz, align 1, !tbaa !50
  %i.bmi = getelementptr inbounds nuw i8, ptr %.1012101859.i, i64 32 ; 3 uses
  %indvars.iv.next2325.i.3 = add nuw nsw i64 %indvars.iv2324.i, 4 ; 2 uses
  %niter563.next.3 = add i64 %niter563, 4         ; 2 uses
  %niter563.ncmp.3 = icmp eq i64 %niter563.next.3, %unroll_iter562
  br i1 %niter563.ncmp.3, label %._crit_edge1861.i.unr-lcssa, label %.preheader1579.i.new, !llvm.loop !339

._crit_edge1865.split.i:                          ; preds = %._crit_edge1861.i, %.preheader1584.i, %.preheader1580.lr.ph.i, %.preheader1581.lr.ph.i
  %indvars.iv.next2331.i = add nuw nsw i64 %indvars.iv2330.i, 4 ; 3 uses
  %i.bmj = or disjoint i64 %indvars.iv.next2331.i, 3 ; 2 uses
  %i.bmk = icmp slt i64 %i.bmj, %i.aio
  %i.bml = add <4 x i32> %i.bax, %i.ais
  %i.bmm = trunc nsw i64 %i.bmj to i32
  br i1 %i.bmk, label %_ZN4ncnn3MatD2Ev.exit1301.i, label %.preheader1578.loopexit.i, !llvm.loop !340

.preheader1568.loopexit.i:                        ; preds = %._crit_edge1942.split.i
  %i.bmn = trunc nsw i64 %indvars.iv.next2375.i to i32
  br label %.preheader1568.i

.preheader1568.i:                                 ; preds = %.preheader1568.loopexit.i, %.preheader1578.i
  %.3.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader1578.i ], [ %i.bmn, %.preheader1568.loopexit.i ] ; 3 uses
  %i.bmo = icmp slt i32 %.3.lcssa.i, %i.g
  br i1 %i.bmo, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader1568.i
  %i.bmp = mul i32 %i.h, %i.d                     ; 3 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bmr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bms = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.bmt = shufflevector <4 x i32> %i.bms, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bmu = mul <4 x i32> %i.bmt, <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.bmv = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %i.bmw = shufflevector <8 x i32> %i.bmv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bmx = mul <8 x i32> %i.bmw, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.bmy = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.bmz = shufflevector <16 x i32> %i.bmy, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bna = mul <16 x i32> %i.bmz, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %i.bnb = icmp sgt i32 %i.h, 15
  %i.bnc = icmp sgt i32 %i.d, 0                   ; 4 uses
  %i.bnd = shl i32 %i.d, 4
  %i.bne = sext i32 %i.bnd to i64                 ; 2 uses
  %i.bnf = shl i32 %i.d, 3
  %i.bng = sext i32 %i.bnf to i64                 ; 2 uses
  %i.bnh = shl i32 %i.d, 2
  %i.bni = sext i32 %i.bnh to i64
  %i.bnj = sext i32 %i.d to i64                   ; 3 uses
  %i.bnk = shl i32 %i.d, 1
  %i.bnl = sext i32 %i.bnk to i64
  %i.bnm = icmp slt i32 %i.d, 1
  %i.bnn = add i32 %i.h, -16                      ; 2 uses
  %i.bno = lshr i32 %i.bnn, 2
  %i.bnp = and i32 %i.bno, 1073741820
  %narrow2458.i = add nuw nsw i32 %i.bnp, 4
  %i.bnq = zext nneg i32 %narrow2458.i to i64
  %i.bnr = mul nsw i64 %i.bnq, %i.bne
  %i.bns = mul i32 %i.bmp, %.3.lcssa.i
  %i.bnt = and i32 %i.bnn, -16
  %i.bnu = add nuw nsw i32 %i.bnt, 16             ; 4 uses
  %i.bnv = add i32 %i.h, -8
  %i.bnw = sext i32 %.3.lcssa.i to i64
  %wide.trip.count2415.i = sext i32 %i.g to i64
  %i.bnx = or disjoint i32 %i.bnu, 7
  %i.bny = icmp slt i32 %i.bnx, %i.h
  %wide.trip.count2384.i = zext i32 %i.d to i64   ; 19 uses
  %i.bnz = add nsw i64 %wide.trip.count2384.i, -1 ; 3 uses
  %xtraiter589 = and i64 %wide.trip.count2384.i, 1
  %i.boa = icmp eq i64 %i.bnz, 0
  %unroll_iter594 = and i64 %wide.trip.count2384.i, 2147483646
  %lcmp.mod591.not = icmp eq i64 %xtraiter589, 0
  %lcmp.mod593 = trunc i32 %i.d to i1
  %xtraiter597 = and i64 %wide.trip.count2384.i, 3 ; 3 uses
  %i.bob = icmp ult i64 %i.bnz, 3
  %unroll_iter602 = and i64 %wide.trip.count2384.i, 2147483644
  %lcmp.mod599.not = icmp eq i64 %xtraiter597, 0
  %lcmp.mod601 = icmp ne i64 %xtraiter597, 0
  %xtraiter605 = and i64 %wide.trip.count2384.i, 3 ; 3 uses
  %i.boc = icmp ult i64 %i.bnz, 3
  %unroll_iter610 = and i64 %wide.trip.count2384.i, 2147483644
  %lcmp.mod607.not = icmp eq i64 %xtraiter605, 0
  %lcmp.mod609 = icmp ne i64 %xtraiter605, 0
  %min.iters.check403 = icmp ult i32 %i.d, 8
  %min.iters.check405 = icmp ult i32 %i.d, 32
  %i.bod = and i64 %wide.trip.count2384.i, 24
  %n.vec407 = and i64 %wide.trip.count2384.i, 2147483616 ; 5 uses
  %i.boe = shl nuw nsw i64 %n.vec407, 2
  %cmp.n420 = icmp eq i64 %n.vec407, %wide.trip.count2384.i
  %min.epilog.iters.check425 = icmp eq i64 %i.bod, 0
  %n.vec427 = and i64 %wide.trip.count2384.i, 2147483640 ; 4 uses
  %i.bof = shl nuw nsw i64 %n.vec427, 2
  %cmp.n436 = icmp eq i64 %n.vec427, %wide.trip.count2384.i
  %min.iters.check372 = icmp ult i32 %i.d, 8
  %min.iters.check374 = icmp ult i32 %i.d, 64
  %i.bog = and i64 %wide.trip.count2384.i, 56
  %n.vec376 = and i64 %wide.trip.count2384.i, 2147483584 ; 5 uses
  %i.boh = shl nuw nsw i64 %n.vec376, 1
  %cmp.n386 = icmp eq i64 %n.vec376, %wide.trip.count2384.i
  %min.epilog.iters.check391 = icmp eq i64 %i.bog, 0
  %n.vec393 = and i64 %wide.trip.count2384.i, 2147483640 ; 4 uses
  %i.boi = shl nuw nsw i64 %n.vec393, 1
  %cmp.n400 = icmp eq i64 %n.vec393, %wide.trip.count2384.i
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit1300.i:                      ; preds = %._crit_edge1942.split.i, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i
  %indvars.iv2374.i = phi i64 [ %i.bai, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %indvars.iv.next2375.i, %._crit_edge1942.split.i ] ; 2 uses
  %indvars.iv2337.i = phi i32 [ %i.bae, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %indvars.iv.next2338.i, %._crit_edge1942.split.i ] ; 2 uses
  %indvars.iv2334.i = phi i32 [ %i.bac, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %indvars.iv.next2335.i, %._crit_edge1942.split.i ] ; 2 uses
  %i.boj = phi i32 [ %i.ayx, %_ZN4ncnn3MatD2Ev.exit1300.lr.ph.i ], [ %i.byz, %._crit_edge1942.split.i ]
  %i.bok = sext i32 %indvars.iv2334.i to i64
  %i.bol = shl nsw i64 %i.bok, 2
  %i.bom = sext i32 %indvars.iv2337.i to i64
  %i.bon = shl nsw i64 %i.bom, 2
  %i.boo = load ptr, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.bop = trunc nsw i64 %indvars.iv2374.i to i32 ; 2 uses
  %i.boq = mul i32 %i.ayz, %i.bop
  %i.bor = sext i32 %i.boq to i64
  %i.bos = getelementptr inbounds [4 x i8], ptr %i.boo, i64 %i.bor ; 2 uses
  %i.bot = mul i32 %i.boj, %i.ayz
  %i.bou = sext i32 %i.bot to i64
  %i.bov = getelementptr inbounds [4 x i8], ptr %i.boo, i64 %i.bou ; 2 uses
  %i.bow = insertelement <4 x i32> poison, i32 %i.bop, i64 0
  %i.box = shufflevector <4 x i32> %i.bow, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.boy = lshr <4 x i32> %i.box, <i32 3, i32 2, i32 1, i32 4>
  %i.boz = and <4 x i32> %i.boy, <i32 1, i32 1, i32 1, i32 -1>
  %i.bpa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.boz)
  %i.bpb = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !341
  %i.bpc = load i64, ptr %i.aza, align 8, !tbaa !20, !noalias !341
  %i.bpd = zext nneg i32 %i.bpa to i64
  %i.bpe = mul i64 %i.bpc, %i.bpd
  %i.bpf = load i64, ptr %i.azb, align 8, !tbaa !49, !noalias !341
  %i.bpg = mul i64 %i.bpe, %i.bpf
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpb, i64 %i.bpg ; 4 uses
  br i1 %i.azl, label %.preheader1573.lr.ph.i, label %.preheader1577.i

.preheader1573.lr.ph.i:                           ; preds = %_ZN4ncnn3MatD2Ev.exit1300.i
  br i1 %i.azm, label %.preheader1573.us.i, label %.preheader1577.thread.i

.preheader1573.us.i:                              ; preds = %.preheader1573.lr.ph.i, %._crit_edge1870.us.i
  %.011351875.us.i = phi i32 [ %i.brs, %._crit_edge1870.us.i ], [ 0, %.preheader1573.lr.ph.i ]
  %.011401874.us.i = phi ptr [ %.lcssa460, %._crit_edge1870.us.i ], [ %i.bph, %.preheader1573.lr.ph.i ] ; 2 uses
  %.011511873.us.i = phi ptr [ %i.brr, %._crit_edge1870.us.i ], [ %i.bov, %.preheader1573.lr.ph.i ] ; 4 uses
  %.011551872.us.i = phi ptr [ %i.brq, %._crit_edge1870.us.i ], [ %i.bos, %.preheader1573.lr.ph.i ] ; 4 uses
  br i1 %i.ban, label %.epil.preheader564, label %.preheader1573.us.i.new

.preheader1573.us.i.new:                          ; preds = %.preheader1573.us.i, %.preheader1573.us.i.new
  %indvars.iv2340.i = phi i64 [ %indvars.iv.next2341.i.1, %.preheader1573.us.i.new ], [ 0, %.preheader1573.us.i ] ; 4 uses
  %.111411868.us.i = phi ptr [ %i.bqv, %.preheader1573.us.i.new ], [ %.011401874.us.i, %.preheader1573.us.i ] ; 5 uses
  %niter571 = phi i64 [ %niter571.next.1, %.preheader1573.us.i.new ], [ 0, %.preheader1573.us.i ]
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %indvars.iv2340.i
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %indvars.iv2340.i
  %i.bpk = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bpi, <16 x i32> %i.azk, <16 x i1> splat (i1 true), i32 4)
  %i.bpl = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bpj, <16 x i32> %i.azk, <16 x i1> splat (i1 true), i32 4)
  %i.bpm = bitcast <16 x float> %i.bpk to <16 x i32>
  %i.bpn = lshr <16 x i32> %i.bpm, splat (i32 16) ; 2 uses
  %i.bpo = shufflevector <16 x i32> %i.bpn, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpp = shufflevector <16 x i32> %i.bpn, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpq = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bpo, <8 x i32> %i.bpp)
  %i.bpr = bitcast <16 x i16> %i.bpq to <4 x i64>
  %i.bps = shufflevector <4 x i64> %i.bpr, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bps, ptr %.111411868.us.i, align 1, !tbaa !50
  %i.bpt = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 32
  %i.bpu = bitcast <16 x float> %i.bpl to <16 x i32>
  %i.bpv = lshr <16 x i32> %i.bpu, splat (i32 16) ; 2 uses
  %i.bpw = shufflevector <16 x i32> %i.bpv, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bpx = shufflevector <16 x i32> %i.bpv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpy = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bpw, <8 x i32> %i.bpx)
  %i.bpz = bitcast <16 x i16> %i.bpy to <4 x i64>
  %i.bqa = shufflevector <4 x i64> %i.bpz, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bqa, ptr %i.bpt, align 1, !tbaa !50
  %i.bqb = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 64
  %indvars.iv.next2341.i = or disjoint i64 %indvars.iv2340.i, 1 ; 2 uses
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %indvars.iv.next2341.i
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %indvars.iv.next2341.i
  %i.bqe = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bqc, <16 x i32> %i.azk, <16 x i1> splat (i1 true), i32 4)
  %i.bqf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.bqd, <16 x i32> %i.azk, <16 x i1> splat (i1 true), i32 4)
  %i.bqg = bitcast <16 x float> %i.bqe to <16 x i32>
  %i.bqh = lshr <16 x i32> %i.bqg, splat (i32 16) ; 2 uses
  %i.bqi = shufflevector <16 x i32> %i.bqh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqj = shufflevector <16 x i32> %i.bqh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqk = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bqi, <8 x i32> %i.bqj)
  %i.bql = bitcast <16 x i16> %i.bqk to <4 x i64>
  %i.bqm = shufflevector <4 x i64> %i.bql, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bqm, ptr %i.bqb, align 1, !tbaa !50
  %i.bqn = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 96
  %i.bqo = bitcast <16 x float> %i.bqf to <16 x i32>
  %i.bqp = lshr <16 x i32> %i.bqo, splat (i32 16) ; 2 uses
  %i.bqq = shufflevector <16 x i32> %i.bqp, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bqr = shufflevector <16 x i32> %i.bqp, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqs = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bqq, <8 x i32> %i.bqr)
  %i.bqt = bitcast <16 x i16> %i.bqs to <4 x i64>
  %i.bqu = shufflevector <4 x i64> %i.bqt, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bqu, ptr %i.bqn, align 1, !tbaa !50
  %i.bqv = getelementptr inbounds nuw i8, ptr %.111411868.us.i, i64 128 ; 3 uses
  %indvars.iv.next2341.i.1 = add nuw nsw i64 %indvars.iv2340.i, 2 ; 2 uses
  %niter571.next.1 = add i64 %niter571, 2         ; 2 uses
  %niter571.ncmp.1 = icmp eq i64 %niter571.next.1, %unroll_iter570
  br i1 %niter571.ncmp.1, label %._crit_edge1870.us.i.unr-lcssa, label %.preheader1573.us.i.new, !llvm.loop !344

._crit_edge1870.us.i.unr-lcssa:                   ; preds = %.preheader1573.us.i.new
  br i1 %lcmp.mod567.not, label %._crit_edge1870.us.i, label %.epil.preheader564

.epil.preheader564:                               ; preds = %._crit_edge1870.us.i.unr-lcssa, %.preheader1573.us.i
  %indvars.iv2340.i.epil.init = phi i64 [ 0, %.preheader1573.us.i ], [ %indvars.iv.next2341.i.1, %._crit_edge1870.us.i.unr-lcssa ] ; 2 uses
  %.111411868.us.i.epil.init = phi ptr [ %.011401874.us.i, %.preheader1573.us.i ], [ %i.bqv, %._crit_edge1870.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod569)
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %indvars.iv2340.i.epil.init
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %indvars.iv2340.i.epil.init
  %i.bqy = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bqw, <16 x i32> %i.azk, <16 x i1> splat (i1 true), i32 4)
  %i.bqz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.bqx, <16 x i32> %i.azk, <16 x i1> splat (i1 true), i32 4)
  %i.bra = bitcast <16 x float> %i.bqy to <16 x i32>
  %i.brb = lshr <16 x i32> %i.bra, splat (i32 16) ; 2 uses
  %i.brc = shufflevector <16 x i32> %i.brb, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brd = shufflevector <16 x i32> %i.brb, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bre = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.brc, <8 x i32> %i.brd)
  %i.brf = bitcast <16 x i16> %i.bre to <4 x i64>
  %i.brg = shufflevector <4 x i64> %i.brf, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.brg, ptr %.111411868.us.i.epil.init, align 1, !tbaa !50
  %i.brh = getelementptr inbounds nuw i8, ptr %.111411868.us.i.epil.init, i64 32
  %i.bri = bitcast <16 x float> %i.bqz to <16 x i32>
  %i.brj = lshr <16 x i32> %i.bri, splat (i32 16) ; 2 uses
  %i.brk = shufflevector <16 x i32> %i.brj, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.brl = shufflevector <16 x i32> %i.brj, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.brm = tail call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.brk, <8 x i32> %i.brl)
  %i.brn = bitcast <16 x i16> %i.brm to <4 x i64>
  %i.bro = shufflevector <4 x i64> %i.brn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bro, ptr %i.brh, align 1, !tbaa !50
  %i.brp = getelementptr inbounds nuw i8, ptr %.111411868.us.i.epil.init, i64 64
  br label %._crit_edge1870.us.i

._crit_edge1870.us.i:                             ; preds = %._crit_edge1870.us.i.unr-lcssa, %.epil.preheader564
  %.lcssa460 = phi ptr [ %i.bqv, %._crit_edge1870.us.i.unr-lcssa ], [ %i.brp, %.epil.preheader564 ] ; 2 uses
  %i.brq = getelementptr inbounds nuw [4 x i8], ptr %.011551872.us.i, i64 %i.azo ; 2 uses
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %.011511873.us.i, i64 %i.azo ; 2 uses
  %i.brs = add nuw nsw i32 %.011351875.us.i, 16   ; 2 uses
  %i.brt = or disjoint i32 %i.brs, 15
  %i.bru = icmp slt i32 %i.brt, %i.h
  br i1 %i.bru, label %.preheader1573.us.i, label %.preheader1577.i, !llvm.loop !345

.preheader1577.i:                                 ; preds = %._crit_edge1870.us.i, %_ZN4ncnn3MatD2Ev.exit1300.i
  %.01155.lcssa.i = phi ptr [ %i.bos, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %i.brq, %._crit_edge1870.us.i ] ; 3 uses
  %.01151.lcssa.i = phi ptr [ %i.bov, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %i.brr, %._crit_edge1870.us.i ] ; 3 uses
  %.01140.lcssa.i = phi ptr [ %i.bph, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %.lcssa460, %._crit_edge1870.us.i ] ; 3 uses
  %.01135.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit1300.i ], [ %i.bag, %._crit_edge1870.us.i ] ; 4 uses
  %i.brv = or disjoint i32 %.01135.lcssa.i, 7
  %i.brw = icmp slt i32 %i.brv, %i.h
  br i1 %i.brw, label %.preheader1572.lr.ph.i, label %.preheader1576.i

.preheader1577.thread.i:                          ; preds = %.preheader1573.lr.ph.i
  %scevgep2333.i = getelementptr i8, ptr %i.boo, i64 %i.bab ; 2 uses
  %scevgep2336.i = getelementptr i8, ptr %scevgep2333.i, i64 %i.bol ; 2 uses
  %scevgep2339.i = getelementptr i8, ptr %scevgep2333.i, i64 %i.bon ; 2 uses
  br i1 %i.bal, label %.preheader1572.preheader.i, label %.preheader1576.i

.preheader1572.lr.ph.i:                           ; preds = %.preheader1577.i
  br i1 %i.azm, label %.preheader1572.us.i, label %.preheader1572.preheader.i

.preheader1572.preheader.i:                       ; preds = %.preheader1572.lr.ph.i, %.preheader1577.thread.i
  %.01155.lcssa25812592.i = phi ptr [ %.01155.lcssa.i, %.preheader1572.lr.ph.i ], [ %scevgep2336.i, %.preheader1577.thread.i ]
  %.01151.lcssa25822591.i = phi ptr [ %.01151.lcssa.i, %.preheader1572.lr.ph.i ], [ %scevgep2339.i, %.preheader1577.thread.i ]
end_hunk_7
