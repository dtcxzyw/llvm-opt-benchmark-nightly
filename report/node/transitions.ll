inline.NumInlined: 1034
inline.NumDeleted: 454
begin_hunk_0_@_ZN2v88internal19TransitionsAccessor12InsertHelperEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_4NameEEES6_NS0_18TransitionKindFlagE:bb.a
  %i.dm = load i64, ptr %3, align 8               ; 2 uses
  %i.dn = add i64 %i.dm, 15
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = load atomic volatile i32, ptr %i.do acquire, align 4
  %i.dq = lshr i32 %i.dp, 10
  %i.dr = and i32 %i.dq, 1023
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = sext i32 %i.ds to i64
  %i.du = add i64 %i.dm, 39
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %i.dx = mul nsw i64 %i.dt, 103079215104
  %sext.i.i173 = add nsw i64 %i.dx, 137438953472
  %i.dy = lshr exact i64 %sext.i.i173, 32
  %i.dz = add i64 %i.dw, 7
  %i.ea = add i64 %i.dz, %i.dy
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = load atomic volatile i64, ptr %i.eb monotonic, align 8
  %i.ed = add i64 %i.da, -1                       ; 2 uses
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  %i.ef = load i64, ptr %2, align 8               ; 4 uses
  %i.eg = or disjoint i64 %i.ed, 1
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread528, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.ej = add i64 %i.ei, 11
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i16, ptr %i.ek monotonic, align 2
  %i.em = and i16 %i.el, -96
  %i.en = icmp eq i16 %i.em, 0
  br i1 %i.en, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eo = add i64 %i.ef, -1
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load atomic volatile i64, ptr %i.ep monotonic, align 8
  %i.er = add i64 %i.eq, 11
  %i.es = inttoptr i64 %i.er to ptr
  %i.et = load atomic volatile i16, ptr %i.es monotonic, align 2
  %i.eu = and i16 %i.et, -96
  %i.ev = icmp eq i16 %i.eu, 0
  br i1 %i.ev, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ew = load atomic volatile i64, ptr %i.ee monotonic, align 8
  %i.ex = add i64 %i.ew, 11
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = load atomic volatile i16, ptr %i.ey monotonic, align 2
  %i.fa = icmp eq i16 %i.ez, 128
  br i1 %i.fa, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = add i64 %i.ef, -1
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i64, ptr %i.fc monotonic, align 8
  %i.fe = add i64 %i.fd, 11
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = load atomic volatile i16, ptr %i.ff monotonic, align 2
  %i.fh = icmp eq i16 %i.fg, 128
  br i1 %i.fh, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit

_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit: ; preds = %bb.aa
  %i.fi = call noundef zeroext i1 @_ZNK2v88internal6String10SlowEqualsENS0_6TaggedIS1_EE(ptr noundef nonnull align 4 dereferenceable(16) %i.ee, i64 %i.ef) #16
  br i1 %i.fi, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread528, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread

_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread528: ; preds = %bb.w, %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit
  %i.fj = xor i64 %i.ec, %i.dl
  %i.fk = and i64 %i.fj, 124554051584
  %or.cond652 = icmp eq i64 %i.fk, 0
  br i1 %or.cond652, label %.critedge, label %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread

.critedge:                                        ; preds = %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread528
  %i.fl = load i64, ptr %3, align 8
  %i.fm = or i64 %i.fl, 3
  call void @_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6TaggedINS0_5UnionIJNS0_15TransitionArrayENS0_9MaybeWeakIS5_EEEEEEE(ptr noundef %0, ptr nonnull %1, i64 %i.fm)
  br label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6TaggedINS0_5UnionIJNS0_15TransitionArrayENS0_9MaybeWeakIS5_EEEEEEE.exit

_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread: ; preds = %bb.y, %bb.z, %bb.aa, %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread528, %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit, %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit
  %i.fn = call ptr @_ZN2v88internal7Factory18NewTransitionArrayEii(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 1, i32 noundef 1) #16 ; 10 uses
  %i.fo = load i64, ptr %1, align 8
  %i.fp = add i64 %i.fo, 63
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load atomic volatile i64, ptr %i.fq acquire, align 8 ; 6 uses
  %i.fs = and i64 %i.fr, 1
  %i.ft = icmp eq i64 %i.fs, 0
  %i.fu = and i64 %i.fr, 4294967295
  %i.fv = icmp eq i64 %i.fu, 3
  %or.cond.i.i174 = or i1 %i.ft, %i.fv
  br i1 %or.cond.i.i174, label %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178.thread, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread
  %i.fw = and i64 %i.fr, 3
  switch i64 %i.fw, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i177 [
    i64 3, label %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178
    i64 1, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fx = add nsw i64 %i.fr, -1
  %i.fy = inttoptr i64 %i.fx to ptr               ; 2 uses
  %i.fz = load atomic volatile i64, ptr %i.fy monotonic, align 8
  %i.ga = add i64 %i.fz, 11
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = load atomic volatile i16, ptr %i.gb monotonic, align 2
  %i.gd = icmp eq i16 %i.gc, 258
  br i1 %i.gd, label %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ge = load atomic volatile i64, ptr %i.fy monotonic, align 8
  %i.gf = add i64 %i.ge, 11
  %i.gg = inttoptr i64 %i.gf to ptr
  %i.gh = load atomic volatile i16, ptr %i.gg monotonic, align 2 ; 0 uses
  br label %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178.thread

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_7IsolateEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i177: ; preds = %bb.ab
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable

_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178.thread: ; preds = %bb.ad, %_ZN2v88internal4Name6EqualsENS0_6TaggedIS1_EE.exit.thread, %bb.ac
  %i.gi = load i64, ptr %i.fn, align 8
  %i.gj = add i64 %i.gi, -1
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = load i64, ptr %2, align 8
  %i.gm = load i64, ptr %3, align 8
  %i.gn = or i64 %i.gm, 3
  call void @_ZN2v88internal15TransitionArray3SetEiNS0_6TaggedINS0_4NameEEENS2_INS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.gk, i32 noundef 0, i64 %i.gl, i64 %i.gn)
  %i.go = load i64, ptr %i.fn, align 8            ; 5 uses
  %i.gp = load i64, ptr %1, align 8               ; 4 uses
  %i.gq = add i64 %i.gp, 63                       ; 3 uses
  %i.gr = inttoptr i64 %i.gq to ptr
  store atomic volatile i64 %i.go, ptr %i.gr release, align 8
  %i.gs = trunc i64 %i.go to i1
  %i.gt = and i64 %i.go, 4294967295
  %i.gu = icmp ne i64 %i.gt, 3
  %i.gv = and i1 %i.gu, %i.gs
  br i1 %i.gv, label %bb.ae, label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6TaggedINS0_5UnionIJNS0_15TransitionArrayENS0_9MaybeWeakIS5_EEEEEEE.exit

bb.ae:                                            ; preds = %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178.thread
  %i.gw = and i64 %i.go, -3                       ; 2 uses
  %i.gx = and i64 %i.gp, -262144
  %i.gy = inttoptr i64 %i.gx to ptr
  %i.gz = load i64, ptr %i.gy, align 262144       ; 2 uses
  %i.ha = and i64 %i.gz, 32
  %.not.i.i.i.i.i179 = icmp eq i64 %i.ha, 0
  %i.hb = and i64 %i.gz, 25
  %.not38.i.i.i.i.i180 = icmp eq i64 %i.hb, 0
  br i1 %.not38.i.i.i.i.i180, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.hc = and i64 %i.go, -262144
  %i.hd = inttoptr i64 %i.hc to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i181 = load i64, ptr %i.hd, align 262144
  %i.he = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i181, 25
  %.not39.i.i.i.i.i182 = icmp eq i64 %i.he, 0
  br i1 %.not39.i.i.i.i.i182, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.gp, i64 noundef %i.gq, i64 %i.gw) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  br i1 %.not.i.i.i.i.i179, label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6TaggedINS0_5UnionIJNS0_15TransitionArrayENS0_9MaybeWeakIS5_EEEEEEE.exit, label %bb.ai, !prof !5

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.gp, i64 %i.gq, i64 %i.gw) #16
  br label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6TaggedINS0_5UnionIJNS0_15TransitionArrayENS0_9MaybeWeakIS5_EEEEEEE.exit

_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178: ; preds = %bb.ab
  %i.hf = and i64 %i.fr, -3                       ; 2 uses
  %i.hg = load i64, ptr %i.fn, align 8
  %i.hh = add i64 %i.hg, -1
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = add i64 %i.hf, 15
  %i.hk = inttoptr i64 %i.hj to ptr               ; 2 uses
  %i.hl = load atomic volatile i32, ptr %i.hk acquire, align 4
  %i.hm = lshr i32 %i.hl, 10
  %i.hn = and i32 %i.hm, 1023
  %i.ho = add nsw i32 %i.hn, -1
  %i.hp = sext i32 %i.ho to i64
  %i.hq = add i64 %i.hf, 39
  %i.hr = inttoptr i64 %i.hq to ptr               ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = mul nsw i64 %i.hp, 103079215104
  %sext.i.i.i184 = add nsw i64 %i.ht, 137438953472
  %i.hu = lshr exact i64 %sext.i.i.i184, 32
  %i.hv = add i64 %i.hs, -1
  %i.hw = add i64 %i.hv, %i.hu
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = load atomic volatile i64, ptr %i.hx monotonic, align 8
  %i.hz = or i64 %i.fr, 3                         ; 2 uses
  call void @_ZN2v88internal15TransitionArray3SetEiNS0_6TaggedINS0_4NameEEENS2_INS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.hi, i32 noundef 0, i64 %i.hy, i64 %i.hz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ia = icmp eq i32 %4, 3
  br i1 %i.ia, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178
  %i.ib = load i64, ptr %i.fn, align 8
  %i.ic = add i64 %i.ib, -1
  %i.id = inttoptr i64 %i.ic to ptr               ; 5 uses
  %i.ie = load i64, ptr %2, align 8               ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = lshr i64 %i.ig, 32
  %i.ii = trunc nuw i64 %i.ih to i32
  %i.ij = icmp slt i32 %i.ii, 3
  br i1 %i.ij, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i: ; preds = %bb.aj
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 32 ; 3 uses
  %i.il = load atomic volatile i64, ptr %i.ik monotonic, align 8 ; 2 uses
  %i.im = and i64 %i.il, 1
  %i.in = icmp eq i64 %i.im, 0
  call void @llvm.assume(i1 %i.in)
  %i.io = icmp ult i64 %i.il, 4294967296
  br i1 %i.io, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i: ; preds = %bb.aj, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i
  store i32 0, ptr %i.a, align 4
  %6 = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  store atomic volatile i64 8589934592, ptr %6 monotonic, align 8
  br label %bb.be

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i
  %i.ip = load atomic volatile i64, ptr %i.ik monotonic, align 8 ; 2 uses
  %i.iq = and i64 %i.ip, 1
  %i.ir = icmp eq i64 %i.iq, 0
  call void @llvm.assume(i1 %i.ir)
  %i.is = lshr i64 %i.ip, 32
  %i.it = trunc nuw i64 %i.is to i32
  %i.iu = icmp slt i32 %i.it, 9
  br i1 %i.iu, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i265, label %bb.ap

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i265: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i
  %i.iv = load atomic volatile i64, ptr %i.ik monotonic, align 8 ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %i.ix = icmp eq i64 %i.iw, 0
  call void @llvm.assume(i1 %i.ix)
  %i.iy = lshr i64 %i.iv, 32                      ; 2 uses
  %i.iz = trunc nuw i64 %i.iy to i32              ; 3 uses
  %i.ja = add i64 %i.ie, -1
  %i.jb = inttoptr i64 %i.ja to ptr               ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load atomic i32, ptr %i.jc acquire, align 4 ; 3 uses
  %i.je = and i32 %i.jd, 1
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %_ZNK2v88internal4Name4hashEv.exit.i.i, label %bb.ak, !prof !5

bb.ak:                                            ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i265
  %i.jg = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.jb, i32 noundef %i.jd)
  br label %_ZNK2v88internal4Name4hashEv.exit.i.i

_ZNK2v88internal4Name4hashEv.exit.i.i:            ; preds = %bb.ak, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i265
  %.0.in.i.i.i = phi i32 [ %i.jg, %bb.ak ], [ %i.jd, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i265 ]
  %.0.i31.i.i = lshr i32 %.0.in.i.i.i, 2
  %.not3047.i.i = icmp sgt i32 %i.iz, 0
  br i1 %.not3047.i.i, label %.lr.ph.i.i266, label %._crit_edge.i.i

.lr.ph.i.i266:                                    ; preds = %_ZNK2v88internal4Name4hashEv.exit.i.i, %bb.ao
  %indvars.iv.i.i267 = phi i64 [ %indvars.iv.next.i.i269, %bb.ao ], [ 0, %_ZNK2v88internal4Name4hashEv.exit.i.i ] ; 3 uses
  %.idx.i.i268 = shl i64 %indvars.iv.i.i267, 4
  %i.jh = getelementptr i8, ptr %i.id, i64 %.idx.i.i268
  %i.ji = getelementptr i8, ptr %i.jh, i64 40
  %i.jj = load atomic volatile i64, ptr %i.ji monotonic, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, %i.ie
  br i1 %i.jk, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i266
  %i.jl = add i64 %i.jj, -1
  %i.jm = inttoptr i64 %i.jl to ptr               ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load atomic i32, ptr %i.jn acquire, align 4 ; 3 uses
  %i.jp = and i32 %i.jo, 1
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %_ZNK2v88internal4Name4hashEv.exit34.i.i, label %bb.am, !prof !5

bb.am:                                            ; preds = %bb.al
  %i.jr = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.jm, i32 noundef %i.jo)
  br label %_ZNK2v88internal4Name4hashEv.exit34.i.i

_ZNK2v88internal4Name4hashEv.exit34.i.i:          ; preds = %bb.am, %bb.al
  %.0.in.i32.i.i = phi i32 [ %i.jr, %bb.am ], [ %i.jo, %bb.al ]
  %.0.i33.i.i = lshr i32 %.0.in.i32.i.i, 2
  %i.js = icmp samesign ugt i32 %.0.i33.i.i, %.0.i31.i.i
  br i1 %i.js, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZNK2v88internal4Name4hashEv.exit34.i.i
  %i.jt = trunc nuw nsw i64 %indvars.iv.i.i267 to i32 ; 2 uses
  store i32 %i.jt, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit

bb.ao:                                            ; preds = %_ZNK2v88internal4Name4hashEv.exit34.i.i
  %indvars.iv.next.i.i269 = add nuw nsw i64 %indvars.iv.i.i267, 1 ; 2 uses
  %exitcond.not.i.i270 = icmp eq i64 %indvars.iv.next.i.i269, %i.iy
  br i1 %exitcond.not.i.i270, label %._crit_edge.i.i, label %.lr.ph.i.i266, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.ao, %_ZNK2v88internal4Name4hashEv.exit.i.i
  store i32 %i.iz, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit

bb.ap:                                            ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i
  %i.ju = call noundef i32 @_ZN2v88internal15TransitionArray16BinarySearchNameENS0_6TaggedINS0_4NameEEEPi(ptr noundef nonnull align 4 dereferenceable(16) %i.id, i64 %i.ie, ptr noundef nonnull %i.a) ; 0 uses
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split

bb.aq:                                            ; preds = %_ZN2v88internal19TransitionsAccessor19GetSimpleTransitionEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE.exit178
  %i.jv = load i64, ptr %3, align 8               ; 2 uses
  %i.jw = add i64 %i.jv, 15
  %i.jx = inttoptr i64 %i.jw to ptr
  %i.jy = load atomic volatile i32, ptr %i.jx acquire, align 4
  %i.jz = lshr i32 %i.jy, 10
  %i.ka = and i32 %i.jz, 1023
  %i.kb = add nsw i32 %i.ka, -1
  %i.kc = sext i32 %i.kb to i64
  %i.kd = add i64 %i.jv, 39
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = load atomic volatile i64, ptr %i.ke monotonic, align 8
  %i.kg = mul nsw i64 %i.kc, 103079215104
  %sext.i.i185 = add nsw i64 %i.kg, 137438953472
  %i.kh = lshr exact i64 %sext.i.i185, 32
  %i.ki = add i64 %i.kf, 7
  %i.kj = add i64 %i.ki, %i.kh
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = load atomic volatile i64, ptr %i.kk monotonic, align 8
  %i.km = lshr i64 %i.kl, 32
  %i.kn = trunc nuw i64 %i.km to i32              ; 2 uses
  %i.ko = load i64, ptr %i.fn, align 8
  %i.kp = add i64 %i.ko, -1
  %i.kq = inttoptr i64 %i.kp to ptr               ; 6 uses
  %i.kr = and i32 %i.kn, 1                        ; 2 uses
  %i.ks = load i64, ptr %2, align 8               ; 3 uses
  %i.kt = lshr i32 %i.kn, 2
  %i.ku = and i32 %i.kt, 7                        ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = lshr i64 %i.kw, 32
  %i.ky = trunc nuw i64 %i.kx to i32
  %i.kz = icmp slt i32 %i.ky, 3
  br i1 %i.kz, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i290, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i272

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i272: ; preds = %bb.aq
  %i.la = getelementptr inbounds nuw i8, ptr %i.kq, i64 32 ; 4 uses
  %i.lb = load atomic volatile i64, ptr %i.la monotonic, align 8 ; 2 uses
  %i.lc = and i64 %i.lb, 1
  %i.ld = icmp eq i64 %i.lc, 0
  call void @llvm.assume(i1 %i.ld)
  %i.le = icmp ult i64 %i.lb, 4294967296
  br i1 %i.le, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i290, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i273

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i290: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i272, %bb.aq
  store i32 0, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i273: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i272
  %i.lf = load atomic volatile i64, ptr %i.la monotonic, align 8 ; 2 uses
  %i.lg = and i64 %i.lf, 1
  %i.lh = icmp eq i64 %i.lg, 0
  call void @llvm.assume(i1 %i.lh)
  %i.li = lshr i64 %i.lf, 32
  %i.lj = trunc nuw i64 %i.li to i32
  %i.lk = icmp slt i32 %i.lj, 9
  br i1 %i.lk, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i275, label %bb.aw

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i275: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i273
  %i.ll = load atomic volatile i64, ptr %i.la monotonic, align 8 ; 2 uses
  %i.lm = and i64 %i.ll, 1
  %i.ln = icmp eq i64 %i.lm, 0
  call void @llvm.assume(i1 %i.ln)
  %i.lo = lshr i64 %i.ll, 32                      ; 2 uses
  %i.lp = trunc nuw i64 %i.lo to i32              ; 2 uses
  %i.lq = add i64 %i.ks, -1
  %i.lr = inttoptr i64 %i.lq to ptr               ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load atomic i32, ptr %i.ls acquire, align 4 ; 3 uses
  %i.lu = and i32 %i.lt, 1
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %_ZNK2v88internal4Name4hashEv.exit.i.i276, label %bb.ar, !prof !5

bb.ar:                                            ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i275
  %i.lw = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.lr, i32 noundef %i.lt)
  br label %_ZNK2v88internal4Name4hashEv.exit.i.i276

_ZNK2v88internal4Name4hashEv.exit.i.i276:         ; preds = %bb.ar, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i275
  %.0.in.i.i.i277 = phi i32 [ %i.lw, %bb.ar ], [ %i.lt, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i275 ]
  %.0.i31.i.i278 = lshr i32 %.0.in.i.i.i277, 2
  %.not3047.i.i279 = icmp sgt i32 %i.lp, 0
  br i1 %.not3047.i.i279, label %.lr.ph.i.i281, label %._crit_edge.i.i280

.lr.ph.i.i281:                                    ; preds = %_ZNK2v88internal4Name4hashEv.exit.i.i276, %bb.av
  %indvars.iv.i.i282 = phi i64 [ %indvars.iv.next.i.i287, %bb.av ], [ 0, %_ZNK2v88internal4Name4hashEv.exit.i.i276 ] ; 4 uses
  %.idx.i.i283 = shl i64 %indvars.iv.i.i282, 4
  %i.lx = getelementptr i8, ptr %i.kq, i64 %.idx.i.i283
  %i.ly = getelementptr i8, ptr %i.lx, i64 40
  %i.lz = load atomic volatile i64, ptr %i.ly monotonic, align 8 ; 2 uses
  %i.ma = icmp eq i64 %i.lz, %i.ks
  br i1 %i.ma, label %.thread42.loopexit54.i.i289, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i281
  %i.mb = add i64 %i.lz, -1
  %i.mc = inttoptr i64 %i.mb to ptr               ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load atomic i32, ptr %i.md acquire, align 4 ; 3 uses
  %i.mf = and i32 %i.me, 1
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %_ZNK2v88internal4Name4hashEv.exit34.i.i284, label %bb.at, !prof !5

bb.at:                                            ; preds = %bb.as
  %i.mh = call noundef i32 @_ZNK2v88internal4Name29GetRawHashFromForwardingTableEj(ptr noundef nonnull align 4 dereferenceable(12) %i.mc, i32 noundef %i.me)
  br label %_ZNK2v88internal4Name4hashEv.exit34.i.i284

_ZNK2v88internal4Name4hashEv.exit34.i.i284:       ; preds = %bb.at, %bb.as
  %.0.in.i32.i.i285 = phi i32 [ %i.mh, %bb.at ], [ %i.me, %bb.as ]
  %.0.i33.i.i286 = lshr i32 %.0.in.i32.i.i285, 2
  %i.mi = icmp samesign ugt i32 %.0.i33.i.i286, %.0.i31.i.i278
  br i1 %i.mi, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK2v88internal4Name4hashEv.exit34.i.i284
  %i.mj = trunc nuw nsw i64 %indvars.iv.i.i282 to i32
  store i32 %i.mj, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split

bb.av:                                            ; preds = %_ZNK2v88internal4Name4hashEv.exit34.i.i284
  %indvars.iv.next.i.i287 = add nuw nsw i64 %indvars.iv.i.i282, 1 ; 2 uses
  %exitcond.not.i.i288 = icmp eq i64 %indvars.iv.next.i.i287, %i.lo
  br i1 %exitcond.not.i.i288, label %._crit_edge.i.i280, label %.lr.ph.i.i281, !llvm.loop !6

._crit_edge.i.i280:                               ; preds = %bb.av, %_ZNK2v88internal4Name4hashEv.exit.i.i276
  store i32 %i.lp, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split

.thread42.loopexit54.i.i289:                      ; preds = %.lr.ph.i.i281
  %i.mk = trunc nuw nsw i64 %indvars.iv.i.i282 to i32
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit292

bb.aw:                                            ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit12.i273
  %i.ml = call noundef i32 @_ZN2v88internal15TransitionArray16BinarySearchNameENS0_6TaggedINS0_4NameEEEPi(ptr noundef nonnull align 4 dereferenceable(16) %i.kq, i64 %i.ks, ptr noundef nonnull %i.a)
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit292

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit292: ; preds = %.thread42.loopexit54.i.i289, %bb.aw
  %.1.i274 = phi i32 [ %i.ml, %bb.aw ], [ %i.mk, %.thread42.loopexit54.i.i289 ] ; 5 uses
  %i.mm = icmp eq i32 %.1.i274, -1
  br i1 %i.mm, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit292
  %i.mn = load i64, ptr %i.kv, align 8
  %i.mo = lshr i64 %i.mn, 32
  %i.mp = trunc nuw i64 %i.mo to i32
  %i.mq = icmp slt i32 %i.mp, 3
  br i1 %i.mq, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mr = load atomic volatile i64, ptr %i.la monotonic, align 8 ; 2 uses
  %i.ms = and i64 %i.mr, 1
  %i.mt = icmp eq i64 %i.ms, 0
  call void @llvm.assume(i1 %i.mt)
  %i.mu = lshr i64 %i.mr, 32
  %i.mv = trunc nuw i64 %i.mu to i32
  br label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i = phi i32 [ %i.mv, %bb.ay ], [ 0, %bb.ax ] ; 3 uses
  %i.mw = shl nsw i32 %.1.i274, 1
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr [8 x i8], ptr %i.kq, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 40
  %i.na = load atomic volatile i64, ptr %i.mz monotonic, align 8
  %i.nb = icmp slt i32 %.1.i274, %.0.i.i.i
  br i1 %i.nb, label %.lr.ph.preheader.i.i, label %.critedge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i
  %i.nc = sext i32 %.1.i274 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.nc, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bd ] ; 5 uses
  %.idx.i.i = shl i64 %indvars.iv.i.i, 4
  %i.nd = getelementptr i8, ptr %i.kq, i64 %.idx.i.i ; 2 uses
  %i.ne = getelementptr i8, ptr %i.nd, i64 40
  %i.nf = load atomic volatile i64, ptr %i.ne monotonic, align 8
  %i.ng = icmp eq i64 %i.nf, %i.na
  br i1 %i.ng, label %bb.az, label %.critedge.loopexit.split.loop.exit57.i.i

bb.az:                                            ; preds = %.lr.ph.i.i
  %i.nh = getelementptr i8, ptr %i.nd, i64 48
  %i.ni = load atomic volatile i64, ptr %i.nh monotonic, align 8
  %i.nj = and i64 %i.ni, -3                       ; 2 uses
  %i.nk = add i64 %i.nj, 15
  %i.nl = inttoptr i64 %i.nk to ptr
  %i.nm = load atomic volatile i32, ptr %i.nl acquire, align 4
  %i.nn = lshr i32 %i.nm, 10
  %i.no = and i32 %i.nn, 1023
  %i.np = add nsw i32 %i.no, -1
  %i.nq = sext i32 %i.np to i64
  %i.nr = add i64 %i.nj, 39
  %i.ns = inttoptr i64 %i.nr to ptr
  %i.nt = load atomic volatile i64, ptr %i.ns monotonic, align 8
  %i.nu = mul nsw i64 %i.nq, 103079215104
  %sext.i.i.i.i = add nsw i64 %i.nu, 137438953472
  %i.nv = lshr exact i64 %sext.i.i.i.i, 32
  %i.nw = add i64 %i.nt, 7
  %i.nx = add i64 %i.nw, %i.nv
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = load atomic volatile i64, ptr %i.ny monotonic, align 8
  %i.oa = lshr i64 %i.nz, 32
  %i.ob = trunc nuw i64 %i.oa to i32              ; 2 uses
  %i.oc = and i32 %i.ob, 1                        ; 2 uses
  %i.od = lshr i32 %i.ob, 2
  %i.oe = and i32 %i.od, 7                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.kr, %i.oc
  br i1 %.not.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.of = icmp samesign ult i32 %i.kr, %i.oc
  br i1 %i.of, label %.critedge.loopexit.split.loop.exit.i.i, label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %.not13.i.i.i = icmp eq i32 %i.ku, %i.oe
  br i1 %.not13.i.i.i, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.og = icmp samesign ult i32 %i.ku, %i.oe
  br i1 %i.og, label %.critedge.loopexit.split.loop.exit53.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %.0.i.i.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !8

.critedge.loopexit.split.loop.exit.i.i:           ; preds = %bb.ba
  %i.oh = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.loopexit.split.loop.exit53.i.i:         ; preds = %bb.bc
  %i.oi = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.loopexit.split.loop.exit57.i.i:         ; preds = %.lr.ph.i.i
  %i.oj = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bd, %.critedge.loopexit.split.loop.exit57.i.i, %.critedge.loopexit.split.loop.exit53.i.i, %.critedge.loopexit.split.loop.exit.i.i, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i
  %.022.lcssa.i.i = phi i32 [ %.1.i274, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i.i ], [ %i.oj, %.critedge.loopexit.split.loop.exit57.i.i ], [ %i.oh, %.critedge.loopexit.split.loop.exit.i.i ], [ %i.oi, %.critedge.loopexit.split.loop.exit53.i.i ], [ %.0.i.i.i, %bb.bd ] ; 2 uses
  store i32 %.022.lcssa.i.i, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split: ; preds = %bb.bb, %.lr.ph.i.i266, %._crit_edge.i.i280, %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i290, %bb.au, %bb.ap, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit292
  %.pr = load i32, ptr %i.a, align 4
  br label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit

_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit: ; preds = %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split, %.critedge.i.i, %._crit_edge.i.i, %bb.an
  %7 = phi i32 [ %.pr, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exitthread-pre-split ], [ %.022.lcssa.i.i, %.critedge.i.i ], [ %i.iz, %._crit_edge.i.i ], [ %i.jt, %bb.an ] ; 2 uses
  %i.ok = load i64, ptr %i.fn, align 8
  %i.ol = add i64 %i.ok, -1
  %i.om = inttoptr i64 %i.ol to ptr
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  store atomic volatile i64 8589934592, ptr %i.on monotonic, align 8
  %i.oo = icmp eq i32 %7, 0
  br i1 %i.oo, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread.i, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit
  %i.op = load i64, ptr %i.fn, align 8
  %i.oq = add i64 %i.op, -1
  %i.or = inttoptr i64 %i.oq to ptr
  %i.os = load atomic volatile i32, ptr %i.hk acquire, align 4
  %i.ot = lshr i32 %i.os, 10
  %i.ou = and i32 %i.ot, 1023
  %i.ov = add nsw i32 %i.ou, -1
  %i.ow = sext i32 %i.ov to i64
  %i.ox = load i64, ptr %i.hr, align 8
  %i.oy = mul nsw i64 %i.ow, 103079215104
  %sext.i.i.i187 = add nsw i64 %i.oy, 137438953472
  %i.oz = lshr exact i64 %sext.i.i.i187, 32
  %i.pa = add i64 %i.ox, -1
  %i.pb = add i64 %i.pa, %i.oz
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = load atomic volatile i64, ptr %i.pc monotonic, align 8
  call void @_ZN2v88internal15TransitionArray3SetEiNS0_6TaggedINS0_4NameEEENS2_INS0_9MaybeWeakINS0_6ObjectEEEEE(ptr noundef nonnull align 4 dereferenceable(16) %i.or, i32 noundef 1, i64 %i.pd, i64 %i.hz)
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit
  %i.pe = phi i32 [ %.pre, %bb.be ], [ %7, %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit ]
  %i.pf = load i64, ptr %i.fn, align 8
  %i.pg = add i64 %i.pf, -1                       ; 3 uses
  %i.ph = inttoptr i64 %i.pg to ptr
  %i.pi = load i64, ptr %2, align 8               ; 5 uses
  %i.pj = shl nsw i32 %i.pe, 1
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr [8 x i8], ptr %i.ph, i64 %i.pk
  %i.pm = getelementptr i8, ptr %i.pl, i64 40     ; 2 uses
  store atomic volatile i64 %i.pi, ptr %i.pm monotonic, align 8
  %i.pn = trunc i64 %i.pi to i1
  %i.po = and i64 %i.pi, 4294967295
  %i.pp = icmp ne i64 %i.po, 3
  %i.pq = and i1 %i.pp, %i.pn
  br i1 %i.pq, label %bb.bg, label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit

bb.bg:                                            ; preds = %bb.bf
  %i.pr = and i64 %i.pi, -3                       ; 2 uses
  %i.ps = or disjoint i64 %i.pg, 1                ; 2 uses
  %i.pt = ptrtoint ptr %i.pm to i64               ; 2 uses
  %i.pu = and i64 %i.pg, -262144
  %i.pv = inttoptr i64 %i.pu to ptr
  %i.pw = load i64, ptr %i.pv, align 262144       ; 2 uses
  %i.px = and i64 %i.pw, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.px, 0
  %i.py = and i64 %i.pw, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.py, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.pz = and i64 %i.pi, -262144
  %i.qa = inttoptr i64 %i.pz to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i = load i64, ptr %i.qa, align 262144
  %i.qb = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i, 25
  %.not39.i.i.i.i.i.i = icmp eq i64 %i.qb, 0
  br i1 %.not39.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ps, i64 noundef %i.pt, i64 %i.pr) #16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit, label %bb.bk, !prof !5

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ps, i64 %i.pt, i64 %i.pr) #16
  br label %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit

_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit: ; preds = %bb.bf, %bb.bj, %bb.bk
  %i.qc = load i64, ptr %i.fn, align 8
  %i.qd = add i64 %i.qc, -1                       ; 3 uses
  %i.qe = inttoptr i64 %i.qd to ptr
  %i.qf = load i32, ptr %i.a, align 4
  %i.qg = load i64, ptr %3, align 8               ; 2 uses
  %i.qh = or i64 %i.qg, 3                         ; 3 uses
  %i.qi = shl nsw i32 %i.qf, 1
  %i.qj = sext i32 %i.qi to i64
  %i.qk = getelementptr [8 x i8], ptr %i.qe, i64 %i.qj
  %i.ql = getelementptr i8, ptr %i.qk, i64 48     ; 2 uses
  store atomic volatile i64 %i.qh, ptr %i.ql monotonic, align 8
  %i.qm = and i64 %i.qh, 4294967295
  %.not556 = icmp eq i64 %i.qm, 3
  br i1 %.not556, label %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit
  %i.qn = and i64 %i.qh, -3                       ; 2 uses
  %i.qo = or disjoint i64 %i.qd, 1                ; 2 uses
  %i.qp = ptrtoint ptr %i.ql to i64               ; 2 uses
  %i.qq = and i64 %i.qd, -262144
  %i.qr = inttoptr i64 %i.qq to ptr
  %i.qs = load i64, ptr %i.qr, align 262144       ; 2 uses
  %i.qt = and i64 %i.qs, 32
  %.not.i.i.i.i.i.i188 = icmp eq i64 %i.qt, 0
  %i.qu = and i64 %i.qs, 25
  %.not38.i.i.i.i.i.i189 = icmp eq i64 %i.qu, 0
  br i1 %.not38.i.i.i.i.i.i189, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.qv = and i64 %i.qg, -262144
  %i.qw = inttoptr i64 %i.qv to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i.i190 = load i64, ptr %i.qw, align 262144
  %i.qx = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i.i190, 25
  %.not39.i.i.i.i.i.i191 = icmp eq i64 %i.qx, 0
  br i1 %.not39.i.i.i.i.i.i191, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.qo, i64 noundef %i.qp, i64 %i.qn) #16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  br i1 %.not.i.i.i.i.i.i188, label %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.bp, !prof !5

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.qo, i64 %i.qp, i64 %i.qn) #16
  br label %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %_ZN2v88internal15TransitionArray6SetKeyEiNS0_6TaggedINS0_4NameEEE.exit, %bb.bo, %bb.bp
  %i.qy = load i64, ptr %i.fn, align 8            ; 5 uses
  %i.qz = load i64, ptr %1, align 8               ; 4 uses
  %i.ra = add i64 %i.qz, 63                       ; 3 uses
  %i.rb = inttoptr i64 %i.ra to ptr
  store atomic volatile i64 %i.qy, ptr %i.rb release, align 8
  %i.rc = trunc i64 %i.qy to i1
  %i.rd = and i64 %i.qy, 4294967295
  %i.re = icmp ne i64 %i.rd, 3
  %i.rf = and i1 %i.re, %i.rc
  br i1 %i.rf, label %bb.bq, label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15TransitionArrayEEE.exit196

bb.bq:                                            ; preds = %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit
  %i.rg = and i64 %i.qy, -3                       ; 2 uses
  %i.rh = and i64 %i.qz, -262144
  %i.ri = inttoptr i64 %i.rh to ptr
  %i.rj = load i64, ptr %i.ri, align 262144       ; 2 uses
  %i.rk = and i64 %i.rj, 32
  %.not.i.i.i.i.i192 = icmp eq i64 %i.rk, 0
  %i.rl = and i64 %i.rj, 25
  %.not38.i.i.i.i.i193 = icmp eq i64 %i.rl, 0
  br i1 %.not38.i.i.i.i.i193, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.rm = and i64 %i.qy, -262144
  %i.rn = inttoptr i64 %i.rm to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i194 = load i64, ptr %i.rn, align 262144
  %i.ro = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i194, 25
  %.not39.i.i.i.i.i195 = icmp eq i64 %i.ro, 0
  br i1 %.not39.i.i.i.i.i195, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.qz, i64 noundef %i.ra, i64 %i.rg) #16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  br i1 %.not.i.i.i.i.i192, label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15TransitionArrayEEE.exit196, label %bb.bu, !prof !5

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.qz, i64 %i.ra, i64 %i.rg) #16
  br label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15TransitionArrayEEE.exit196

_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS4_INS0_15TransitionArrayEEE.exit196: ; preds = %_ZN2v88internal15TransitionArray12SetRawTargetEiNS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZN2v88internal19TransitionsAccessor18ReplaceTransitionsEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEENS0_6TaggedINS0_5UnionIJNS0_15TransitionArrayENS0_9MaybeWeakIS5_EEEEEEE.exit

bb.bv:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 -1, ptr %i.b, align 4
  %i.rp = icmp eq i32 %4, 3                       ; 3 uses
  br i1 %i.rp, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rq = load i64, ptr %3, align 8               ; 2 uses
  %i.rr = add i64 %i.rq, 15
  %i.rs = inttoptr i64 %i.rr to ptr
  %i.rt = load atomic volatile i32, ptr %i.rs acquire, align 4
  %i.ru = lshr i32 %i.rt, 10
  %i.rv = and i32 %i.ru, 1023
  %i.rw = add nsw i32 %i.rv, -1
  %i.rx = sext i32 %i.rw to i64
  %i.ry = add i64 %i.rq, 39
  %i.rz = inttoptr i64 %i.ry to ptr
  %i.sa = load atomic volatile i64, ptr %i.rz monotonic, align 8
  %i.sb = mul nsw i64 %i.rx, 103079215104
  %sext.i.i197 = add nsw i64 %i.sb, 137438953472
  %i.sc = lshr exact i64 %sext.i.i197, 32
  %i.sd = add i64 %i.sa, 7
  %i.se = add i64 %i.sd, %i.sc
  %i.sf = inttoptr i64 %i.se to ptr
  %i.sg = load atomic volatile i64, ptr %i.sf monotonic, align 8
  %i.sh = lshr i64 %i.sg, 32
  %i.si = trunc nuw i64 %i.sh to i32
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %storemerge = phi i32 [ %i.si, %bb.bw ], [ 0, %bb.bv ] ; 4 uses
  %i.sj = load i64, ptr %1, align 8
  %i.sk = add i64 %i.sj, 63
  %i.sl = inttoptr i64 %i.sk to ptr
  %i.sm = load atomic volatile i64, ptr %i.sl acquire, align 8
  %i.sn = add i64 %i.sm, -1                       ; 9 uses
  %i.so = inttoptr i64 %i.sn to ptr               ; 14 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 3 uses
  %i.sq = load i64, ptr %i.sp, align 8
  %i.sr = lshr i64 %i.sq, 32
  %i.ss = trunc nuw i64 %i.sr to i32
  %i.st = icmp slt i32 %i.ss, 3
  br i1 %i.st, label %_ZN2v88internal15TransitionArray10SearchNameENS0_6TaggedINS0_4NameEEEbPi.exit313.thread.sink.split, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread: ; preds = %bb.bx
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 32 ; 8 uses
  %i.sv = load atomic volatile i64, ptr %i.su monotonic, align 8 ; 2 uses
  %i.sw = and i64 %i.sv, 1
  %i.sx = icmp eq i64 %i.sw, 0
  call void @llvm.assume(i1 %i.sx)
  %i.sy = lshr i64 %i.sv, 32
  %i.sz = trunc nuw i64 %i.sy to i32              ; 15 uses
  br i1 %i.rp, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i293, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i314

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.i293: ; preds = %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit.thread
  %i.ta = load i64, ptr %2, align 8               ; 3 uses
  %i.tb = load atomic volatile i64, ptr %i.su monotonic, align 8 ; 2 uses
  %i.tc = and i64 %i.tb, 1
  %i.td = icmp eq i64 %i.tc, 0
end_hunk_0
