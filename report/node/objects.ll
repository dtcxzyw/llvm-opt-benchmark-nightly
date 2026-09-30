Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/objects?download=true
inline.NumInlined: 13178
inline.NumDeleted: 2935
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE:bb.a
bb.as:                                            ; preds = %bb.ag
  %.sroa.051.0.copyload = load i64, ptr %0, align 8
  %i.hv = add i64 %.sroa.051.0.copyload, 7
  %i.hw = inttoptr i64 %i.hv to ptr
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i32
  %i.hz = mul nuw nsw i32 %i.hy, 24
  %i.ia = add nuw nsw i32 %i.hz, 32
  br label %bb.bm

bb.at:                                            ; preds = %bb.ag
  %.sroa.050.0.copyload = load i64, ptr %0, align 8
  %i.ib = add i64 %.sroa.050.0.copyload, 7
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = load atomic volatile i16, ptr %i.ic monotonic, align 2
  %i.ie = sext i16 %i.id to i32
  %i.if = mul nsw i32 %i.ie, 24
  %i.ig = add nsw i32 %i.if, 32
  br label %bb.bm

bb.au:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  br label %bb.bm

bb.av:                                            ; preds = %bb.ag
  br label %bb.bm

bb.aw:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  br label %bb.bm

bb.ax:                                            ; preds = %bb.ag
  %.sroa.038.0.copyload = load i64, ptr %0, align 8
  %i.ih = add i64 %.sroa.038.0.copyload, 7
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = shl nsw i32 %i.ij, 2
  %i.il = and i32 %i.ik, -8
  %i.im = add i32 %i.il, 16
  br label %bb.bm

bb.ay:                                            ; preds = %bb.ag
  %.sroa.035.0.copyload = load i64, ptr %0, align 8
  %i.in = add i64 %.sroa.035.0.copyload, 7
  %i.io = inttoptr i64 %i.in to ptr
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = shl i32 %i.ip, 3
  %i.ir = add i32 %i.iq, 16
  br label %bb.bm

bb.az:                                            ; preds = %bb.ag, %bb.ag
  br label %bb.bm

bb.ba:                                            ; preds = %bb.ag
  %.sroa.032.0.copyload = load i64, ptr %0, align 8
  %i.is = add i64 %.sroa.032.0.copyload, 11
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = shl nsw i32 %i.iu, 3
  %i.iw = add nsw i32 %i.iv, 16
  br label %bb.bm

bb.bb:                                            ; preds = %bb.ag
  %.sroa.024.0.copyload = load i64, ptr %0, align 8
  %i.ix = add i64 %.sroa.024.0.copyload, 15
  %i.iy = inttoptr i64 %i.ix to ptr
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = lshr i64 %i.iz, 32
  %i.jb = trunc nuw i64 %i.ja to i32
  %reass.mul = mul i32 %i.jb, 24
  %i.jc = add i32 %reass.mul, 40
  br label %bb.bm

bb.bc:                                            ; preds = %bb.ag
  br label %bb.bm

bb.bd:                                            ; preds = %bb.ag
  %.sroa.019.0.copyload = load i64, ptr %0, align 8
  %i.jd = add i64 %.sroa.019.0.copyload, 23
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = add i32 %i.jf, 95
  %i.jh = and i32 %i.jg, -64
  br label %bb.bm

bb.be:                                            ; preds = %bb.ag
  %.sroa.018.0.copyload = load i64, ptr %0, align 8
  %i.ji = add i64 %.sroa.018.0.copyload, 7
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = shl nsw i32 %i.jk, 4
  %i.jm = add i32 %i.jl, 16
  br label %bb.bm

bb.bf:                                            ; preds = %bb.ag
  %.sroa.017.0.copyload = load i64, ptr %0, align 8
  %i.jn = add i64 %.sroa.017.0.copyload, 15
  %i.jo = inttoptr i64 %i.jn to ptr
  %i.jp = load i64, ptr %i.jo, align 8
  %sh.diff450 = lshr i64 %i.jp, 29
  %tr.sh.diff451 = trunc i64 %sh.diff450 to i32
  %i.jq = and i32 %tr.sh.diff451, -8
  %i.jr = add nsw i32 %i.jq, 24
  br label %bb.bm

bb.bg:                                            ; preds = %bb.ag
  %i.js = add i64 %1, 9
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = load atomic volatile i8, ptr %i.jt monotonic, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jv, 11
  %i.jx = add i64 %1, 8
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = load atomic volatile i8, ptr %i.jy monotonic, align 1
  %i.ka = zext i8 %i.jz to i32
  %i.kb = shl nuw nsw i32 %i.ka, 3
  %i.kc = or disjoint i32 %i.kb, %i.jw
  br label %bb.bm

bb.bh:                                            ; preds = %bb.ag
  %.sroa.014.0.copyload = load i64, ptr %0, align 8
  %i.kd = add i64 %.sroa.014.0.copyload, 15
  %i.ke = inttoptr i64 %i.kd to ptr
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = add i64 %1, 8
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = load atomic volatile i8, ptr %i.kh monotonic, align 1
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nsw i32 %i.kf, %i.kj
  %i.kl = add i32 %i.kk, 7
  %i.km = and i32 %i.kl, -8
  %i.kn = add nsw i32 %i.km, 24
  br label %bb.bm

bb.bi:                                            ; preds = %bb.ag
  %.sroa.013.0.copyload = load i64, ptr %0, align 8
  %i.ko = add i64 %.sroa.013.0.copyload, 11
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = shl i32 %i.kq, 4
  %i.ks = add i32 %i.kr, 40
  br label %bb.bm

bb.bj:                                            ; preds = %bb.ag
  %.sroa.012.0.copyload = load i64, ptr %0, align 8
  %i.kt = add i64 %.sroa.012.0.copyload, -1
  %i.ku = inttoptr i64 %i.kt to ptr
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = shl i32 %i.kw, 4
  %i.ky = add i32 %i.kx, 16
  br label %bb.bm

bb.bk:                                            ; preds = %bb.ag
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.kz = add i64 %.sroa.0.0.copyload, 7
  %i.la = inttoptr i64 %i.kz to ptr
  %i.lb = load i64, ptr %i.la, align 8
  %sh.diff = lshr i64 %i.lb, 29
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.lc = and i32 %tr.sh.diff, -8
  %i.ld = add nsw i32 %i.lc, 16
  br label %bb.bm

bb.bl:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.bm:                                            ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.p, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %_ZN2v88internal16FeedbackMetadata13AllocatedSizeEv.exit, %bb.ad, %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.o, %bb.ag, %bb.a
  %.1 = phi i32 [ %i.e, %bb.a ], [ %i.p, %bb.c ], [ %i.v, %bb.e ], [ %i.ad, %bb.f ], [ %i.aj, %bb.g ], [ 8, %bb.ag ], [ %i.ap, %bb.h ], [ %i.av, %bb.i ], [ %i.bb, %bb.j ], [ %i.bh, %bb.k ], [ %i.bn, %bb.l ], [ %i.bt, %bb.m ], [ 2432, %bb.o ], [ %i.cb, %bb.p ], [ %i.ch, %bb.r ], [ %i.co, %bb.s ], [ %i.ct, %bb.t ], [ %i.da, %bb.u ], [ %i.ld, %bb.bk ], [ %i.dg, %bb.v ], [ %i.dm, %bb.w ], [ %i.ds, %bb.x ], [ %i.dy, %bb.y ], [ %i.eg, %bb.z ], [ %i.ev, %_ZN2v88internal16FeedbackMetadata13AllocatedSizeEv.exit ], [ %i.fd, %bb.ad ], [ %i.fl, %bb.af ], [ %i.fq, %bb.ah ], [ %i.fx, %bb.ai ], [ %i.ge, %bb.aj ], [ %i.gl, %bb.ak ], [ %i.gr, %bb.al ], [ %i.gw, %bb.am ], [ %i.hb, %bb.an ], [ %i.hi, %bb.ao ], [ %i.ht, %bb.ap ], [ 40, %bb.aq ], [ %i.ky, %bb.bj ], [ %i.hu, %bb.ar ], [ %i.ia, %bb.as ], [ %i.ig, %bb.at ], [ %i.ks, %bb.bi ], [ 24, %bb.au ], [ 64, %bb.av ], [ 8, %bb.ag ], [ 16, %bb.aw ], [ %i.kn, %bb.bh ], [ %i.kc, %bb.bg ], [ %i.jr, %bb.bf ], [ %i.jm, %bb.be ], [ 8, %bb.ag ], [ %i.jh, %bb.bd ], [ %i.im, %bb.ax ], [ 8, %bb.ag ], [ %i.jc, %bb.bb ], [ %i.ir, %bb.ay ], [ 8, %bb.ag ], [ 32, %bb.az ], [ %i.iw, %bb.ba ], [ 104, %bb.bc ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal16HeapObjectLayout15SafeSizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.727", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = ptrtoint ptr %0 to i64
  %i.b = or disjoint i64 %i.a, 1
  store i64 %i.b, ptr %2, align 8
  %i.c = call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull readonly align 8 dereferenceable(8) %2, i64 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal10HeapObject15SafeSizeFromMapENS0_6TaggedINS0_3MapEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %i.a = add i64 %.sroa.0.0.copyload, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !328
  %i.d = add i64 %.sroa.0.0.copyload, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !329 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !330
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !331
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !332
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !333
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !334
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !335
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !336
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %.sroa.0.0.copyload, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !335
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29, !noalias !335
  unreachable

_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %1 = icmp sgt i64 %i.f, 322122547199
  %2 = select i1 %1, i64 8, i64 0
  %i.z = and i32 %i.c, 15
  %i.aa = icmp eq i32 %i.z, 5
  %i.ab = select i1 %i.aa, i64 56, i64 48
  %3 = add nuw nsw i64 %2, %i.ab
  %4 = ashr i64 %i.f, 29
  %5 = and i64 %4, -8                             ; 2 uses
  %i.ac = add nsw i64 %3, %5
  %6 = icmp slt i64 %i.f, 322122547200
  %i.ad = select i1 %6, i64 %5, i64 0
  %i.ae = add nsw i64 %i.ac, %i.ad
  %i.af = lshr i32 %i.g, 7
  %i.ag = and i32 %i.af, 8
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nsw i64 %i.ae, %i.ah
  %i.aj = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not.i.not.i.i.i.i.i, i64 0, i64 16
  %i.al = add nsw i64 %i.ai, %i.ak
  %i.am = lshr i32 %i.i, 11
  %i.an = and i32 %i.am, 8
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add nsw i64 %i.al, %i.ao
  %i.aq = lshr i32 %i.j, 19
  %i.ar = and i32 %i.aq, 8
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = add nsw i64 %i.ap, %i.as
  %i.au = add nsw i64 %i.at, %i.y
  %i.av = add nsw i64 %i.au, %storemerge.i.i
  %i.aw = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !337
  %i.ax = trunc i64 %i.av to i32
  %i.ay = lshr i32 %i.aw, 1
  %i.az = and i32 %i.ay, 8
  %i.ba = add nsw i32 %i.az, %i.ax
  ret i32 %i.ba
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_16PtrComprCageBaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = tail call noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_12InstanceTypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %i.f)
  ret i1 %i.g
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal10HeapObject14NeedsRehashingENS0_12InstanceTypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  switch i16 %1, label %bb.e [
    i16 253, label %bb.b
    i16 254, label %bb.b
    i16 258, label %bb.c
    i16 2113, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 2112, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 209, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 210, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 215, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 208, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 211, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 217, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 206, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 245, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 246, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 247, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
    i16 290, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.sroa.03.0.copyload = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.03.0.copyload, 9
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i16, ptr %i.b monotonic, align 2
  %i.d = icmp sgt i16 %i.c, 1
  br label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %0, align 8
  %i.e = add i64 %.sroa.01.0.copyload, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = icmp slt i32 %i.j, 3
  br i1 %i.k, label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i64 %i.m, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = icmp sgt i32 %i.q, 1
  br label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit

_ZNK2v88internal15TransitionArray21number_of_transitionsEv.exit: ; preds = %bb.d, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.b
  %.0 = phi i1 [ false, %bb.e ], [ %i.d, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.r, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal10HeapObject13CanBeRehashedENS0_16PtrComprCageBaseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 4 uses
  %i.a = add i64 %.sroa.0.0.copyload.i.i, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  switch i16 %i.f, label %bb.f [
    i16 2112, label %bb.g
    i16 2113, label %bb.g
    i16 212, label %bb.b
    i16 213, label %bb.b
    i16 247, label %bb.e
    i16 209, label %bb.g
    i16 210, label %bb.g
    i16 215, label %bb.g
    i16 208, label %bb.g
    i16 211, label %bb.g
    i16 217, label %bb.g
    i16 290, label %bb.g
    i16 253, label %bb.g
    i16 254, label %bb.g
    i16 258, label %bb.g
    i16 245, label %bb.c
    i16 246, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.k = add i64 %.sroa.0.0.copyload.i.i, 7
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.o = add i64 %.sroa.0.0.copyload.i.i, 15
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.f ], [ %i.r, %bb.e ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.j, %bb.c ], [ %i.n, %bb.d ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal15DescriptorArray19GeneralizeAllFieldsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, 9
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2 ; 2 uses
  %i.e = sext i16 %i.d to i64
  %.not28 = icmp eq i16 %i.d, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit
  %.sroa.023.029 = phi i64 [ %i.ar, %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %0, align 8
  %i.f = mul i64 %.sroa.023.029, 103079215104     ; 2 uses
  %sext.i = add i64 %i.f, 137438953472
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = or disjoint i64 %i.g, 7                  ; 2 uses
  %i.i = add i64 %.sroa.01.0.copyload.i, %i.h
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = lshr i64 %i.k, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = and i32 %i.m, -449
  %i.o = or disjoint i32 %i.n, 256                ; 3 uses
  %i.p = and i32 %i.m, 32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZN2v88internal15DescriptorArray8SetValueENS0_13InternalIndexENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.b:                                             ; preds = %.lr.ph
  %i.r = and i32 %i.o, -227
  %spec.select = select i1 %1, i32 %i.r, i32 %i.o ; 3 uses
  %i.s = tail call i64 @_ZN2v88internal9FieldType3AnyEv() #28 ; 5 uses
end_hunk_0
