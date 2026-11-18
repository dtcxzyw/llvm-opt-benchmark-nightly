Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/serial_tree_learner?download=true
inline.NumInlined: 18193
inline.NumDeleted: 6360
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN8LightGBM17SerialTreeLearner11ForceSplitsEPNS_4TreeEPiS3_S3_:bb.a
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !2168 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ac = load i32, ptr %2, align 4, !tbaa !198, !noalias !2168 ; 2 uses
  store i32 %i.ac, ptr %i.ab, align 16, !tbaa !509, !alias.scope !2168
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !514 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2169
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24
  %.not.i.i.i = icmp eq ptr %i.ae, %i.ah
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load <2 x ptr>, ptr %9, align 16, !tbaa !333
  store ptr null, ptr %i.t, align 8, !tbaa !500
  store <2 x ptr> %i.ai, ptr %i.ae, align 8, !tbaa !333
  store ptr null, ptr %9, align 16, !tbaa !515
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 %i.ac, ptr %i.aj, align 8, !tbaa !509
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !514
  br label %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.k:                                             ; preds = %bb.i
  invoke void @_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(20) %9)
          to label %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit unwind label %bb.af

_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %bb.j, %bb.k
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !500 ; 8 uses
  %.not.i.i.i.i188 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i188, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.am, align 8, !tbaa !517
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !518
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !226
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #18, !inline_history !28
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !226
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #18, !inline_history !28
  br label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294
  %.not.i.i.i.i.i189 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i189, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !198
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.o ], [ %i.az, %bb.p ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.q, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit, !prof !365

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #18
  br label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit

_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit: ; preds = %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !291 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !500 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !333
  store <2 x ptr> %i.bf, ptr %11, align 16, !tbaa !333
  %.not.i.i.i.i190 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i190, label %_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit192, label %bb.r

bb.r:                                             ; preds = %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294
  %.not.i.i.i.i.i191 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i191, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !198
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !198
  br label %_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit192

bb.t:                                             ; preds = %bb.r
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit192

_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit192: ; preds = %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit, %bb.s, %bb.t
  invoke void @_ZN8LightGBM17SerialTreeLearner20FindAllForceFeaturesEN24json11_internal_lightgbm4JsonE(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 %10, ptr noundef nonnull align 8 dereferenceable(536) %0, ptr nofree noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit192
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !500 ; 8 uses
  %.not.i.i.i193 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i193, label %_ZN24json11_internal_lightgbm4JsonD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bm, align 8, !tbaa !517
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !518
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !226
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !29
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !226
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18, !inline_history !29
  br label %_ZN24json11_internal_lightgbm4JsonD2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294
  %.not.i.i.i.i194 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i194, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !198
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.y ], [ %i.bz, %bb.z ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.aa, label %_ZN24json11_internal_lightgbm4JsonD2Ev.exit, !prof !365

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #18
  br label %_ZN24json11_internal_lightgbm4JsonD2Ev.exit

_ZN24json11_internal_lightgbm4JsonD2Ev.exit:      ; preds = %bb.u, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 120 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 121
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %13, i64 121
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 23
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 25
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 23
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 25
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 20
  %i.ei = getelementptr inbounds nuw i8, ptr %22, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %23, i64 23
  %i.ek = getelementptr inbounds nuw i8, ptr %24, i64 25
  %i.el = getelementptr inbounds nuw i8, ptr %26, i64 21
  %i.em = getelementptr inbounds nuw i8, ptr %27, i64 21
  %i.en = getelementptr inbounds nuw i8, ptr %28, i64 23
  %i.eo = getelementptr inbounds nuw i8, ptr %29, i64 25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8LightGBM9SplitInfoD2Ev.exit556, %_ZN24json11_internal_lightgbm4JsonD2Ev.exit
  %.0127 = phi i1 [ false, %_ZN24json11_internal_lightgbm4JsonD2Ev.exit ], [ %.1128, %_ZN8LightGBM9SplitInfoD2Ev.exit556 ] ; 2 uses
  %.0120 = phi i32 [ 0, %_ZN24json11_internal_lightgbm4JsonD2Ev.exit ], [ %.1121, %_ZN8LightGBM9SplitInfoD2Ev.exit556 ] ; 6 uses
  %.0118 = phi i8 [ 1, %_ZN24json11_internal_lightgbm4JsonD2Ev.exit ], [ %.1119, %_ZN8LightGBM9SplitInfoD2Ev.exit556 ] ; 6 uses
  %i.ep = load ptr, ptr %i.ad, align 8, !tbaa !519
  %i.eq = load ptr, ptr %i.cb, align 8, !tbaa !519
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %bb.fu, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = load i32, ptr %2, align 4, !tbaa !198
  %i.et = load i32, ptr %3, align 4, !tbaa !198
  %i.eu = load ptr, ptr %0, align 8, !tbaa !226
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 136
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = invoke noundef zeroext i1 %i.ew(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i32 noundef %i.es, i32 noundef %i.et)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ex, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load ptr, ptr %0, align 8, !tbaa !226
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 152
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull %10)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.k
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.gv

bb.ag:                                            ; preds = %_ZN24json11_internal_lightgbm4JsonC2ERKS0_.exit192
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN24json11_internal_lightgbm4JsonD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #18
  br label %bb.gu

bb.ah:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store i32 -1, ptr %12, align 8, !tbaa !313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.ce, align 8, !tbaa !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.cg, align 8, !tbaa !359
  store i8 0, ptr %i.ch, align 1, !tbaa !485
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i32 -1, ptr %13, align 8, !tbaa !313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  store double -inf, ptr %i.ck, align 8, !tbaa !312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.cm, align 8, !tbaa !359
  store i8 0, ptr %i.cn, align 1, !tbaa !485
  %i.fd = invoke noundef i32 @_ZNK24json11_internal_lightgbm4Json4typeEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.ai unwind label %bb.bm

bb.ai:                                            ; preds = %bb.ah
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %_ZNSt13unordered_mapIiN8LightGBM9SplitInfoESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE5eraseERS7_.exit, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store ptr %i.co, ptr %14, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.co, ptr noundef nonnull align 1 dereferenceable(7) @.str.43, i64 7, i1 false)
  store i64 7, ptr %i.cp, align 8, !tbaa !295
  store i8 0, ptr %i.ed, align 1, !tbaa !294
  %i.ff = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK24json11_internal_lightgbm4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.aj unwind label %bb.av

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.fg = invoke noundef i32 @_ZNK24json11_internal_lightgbm4Json9int_valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff)
          to label %bb.ak unwind label %bb.av     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fh = load ptr, ptr %14, align 8, !tbaa !293  ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.co
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.fj = load i64, ptr %i.co, align 8, !tbaa !294
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store ptr %i.cq, ptr %15, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cq, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  store i64 9, ptr %i.cr, align 8, !tbaa !295
  store i8 0, ptr %i.ee, align 1, !tbaa !294
  %i.fl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK24json11_internal_lightgbm4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.al unwind label %bb.aw

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fm = invoke noundef double @_ZNK24json11_internal_lightgbm4Json12number_valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl)
          to label %bb.am unwind label %bb.aw

bb.am:                                            ; preds = %bb.al
  %i.fn = load ptr, ptr %15, align 8, !tbaa !293  ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.cq
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.am
  %i.fp = load i64, ptr %i.cq, align 8, !tbaa !294
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.fr = load ptr, ptr %i.cs, align 8, !tbaa !140 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.ft = sext i32 %i.fg to i64
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !195
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !198
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 464
  %i.fy = sext i32 %i.fw to i64                   ; 3 uses
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !195
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 488
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !195
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.fy
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !198
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.gh = sext i32 %i.gb to i64
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !196
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !200
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = sext i32 %i.gf to i64
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !203
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !205
  %i.gq = invoke noundef i32 @_ZNK8LightGBM9BinMapper10ValueToBinEd(ptr noundef nonnull align 8 dereferenceable(160) %i.gp, double noundef %i.fm)
          to label %_ZNK8LightGBM7Dataset12BinThresholdEid.exit unwind label %bb.bm ; 4 uses

_ZNK8LightGBM7Dataset12BinThresholdEid.exit:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.gr = trunc nuw i8 %.0118 to i1               ; 2 uses
  %.in.v = select i1 %i.gr, i64 56, i64 64
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.gs = load ptr, ptr %.in, align 8, !tbaa !343
  %.in608.v = select i1 %i.gr, i64 128, i64 136
  %.in608 = getelementptr inbounds nuw i8, ptr %0, i64 %.in608.v
  %i.gt = load ptr, ptr %.in608, align 8, !tbaa !234 ; 4 uses
  %i.gu = getelementptr inbounds [96 x i8], ptr %i.gs, i64 %i.fy ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !303 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !304 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !229 ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !360 ; 4 uses
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !462 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !463
  %i.hg = icmp eq i32 %i.hf, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !464
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 720
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !479
  %i.hl = fcmp ogt double %i.hk, f0x3CD203AFA0000000 ; 2 uses
  br i1 %i.hg, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZNK8LightGBM7Dataset12BinThresholdEid.exit
  br i1 %i.hl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN8LightGBM16FeatureHistogram36GatherInfoForThresholdNumericalInnerILb1EEEvddjidPNS_9SplitInfoE(ptr noundef nonnull align 8 dereferenceable(96) %i.gu, double noundef %i.gw, double noundef %i.gy, i32 noundef %i.gq, i32 noundef %i.ha, double noundef %i.hc, ptr noundef nonnull %12)
          to label %_ZN8LightGBM16FeatureHistogram22GatherInfoForThresholdEddjidPNS_9SplitInfoE.exit unwind label %bb.bm

end_hunk_0
begin_hunk_1_@_ZN8LightGBM17SerialTreeLearner11ForceSplitsEPNS_4TreeEPiS3_S3_:bb.a
bb.de:                                            ; preds = %bb.dd
  %i.rq = add nsw i32 %i.rh, -1
  store i32 %i.rq, ptr %i.re, align 8, !tbaa !198
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i295

bb.df:                                            ; preds = %bb.dd
  %i.rr = atomicrmw volatile add ptr %i.re, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i295

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i295: ; preds = %bb.df, %bb.de
  %.0.i.i.i.i.i.i296 = phi i32 [ %i.rh, %bb.de ], [ %i.rr, %bb.df ]
  %i.rs = icmp eq i32 %.0.i.i.i.i.i.i296, 1
  br i1 %i.rs, label %bb.dg, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !365

bb.dg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i295
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rd) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.dg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i295, %bb.dc, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.qw, ptr %i.f, align 8, !tbaa !500
  br label %_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit

_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit:  ; preds = %bb.cw, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.rt = load ptr, ptr %22, align 8, !tbaa !293  ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.di
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit
  %i.rv = load i64, ptr %i.di, align 8, !tbaa !294
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  %i.rx = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK24json11_internal_lightgbm4Json12object_itemsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %._crit_edge.i.i300 unwind label %bb.dx ; 2 uses

._crit_edge.i.i300:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18
  store ptr %i.dk, ptr %23, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.dk, ptr noundef nonnull align 1 dereferenceable(7) @.str.43, i64 7, i1 false)
  store i64 7, ptr %i.dl, align 8, !tbaa !295
  store i8 0, ptr %i.ej, align 1, !tbaa !294
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !450 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %.not10.i.i.i304 = icmp eq ptr %i.rz, null
  br i1 %.not10.i.i.i304, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372.thread, label %.lr.ph.i.i.i305

.lr.ph.i.i.i305:                                  ; preds = %._crit_edge.i.i300, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311
  %.012.i.i.i306 = phi ptr [ %.1.i.i.i316, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311 ], [ %i.rz, %._crit_edge.i.i300 ] ; 4 uses
  %.0811.i.i.i307 = phi ptr [ %.19.i.i.i313, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311 ], [ %i.sa, %._crit_edge.i.i300 ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.012.i.i.i306, i64 40
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !295 ; 3 uses
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i329, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i309

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i309: ; preds = %.lr.ph.i.i.i305
  %.sroa.speculated.i.i.i.i.i.i308 = call i64 @llvm.umin.i64(i64 %i.sc, i64 7)
  %i.se = getelementptr inbounds nuw i8, ptr %.012.i.i.i306, i64 32
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !293
  %i.sg = call i32 @memcmp(ptr noundef %i.sf, ptr noundef nonnull %i.dk, i64 noundef %.sroa.speculated.i.i.i.i.i.i308) #18 ; 2 uses
  %.not.i.i.i.i.i.i310 = icmp eq i32 %i.sg, 0
  br i1 %.not.i.i.i.i.i.i310, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i329, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i329: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i309, %.lr.ph.i.i.i305
  %i.sh = add i64 %i.sc, -7
  %spec.select7.i.i.i.i.i.i.i330 = call i64 @llvm.smax.i64(i64 %i.sh, i64 -2147483648)
  %.08.i.i.i.i.i.i.i331 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i330, i64 2147483647)
  %.0.i6.i.i.i.i.i.i332 = trunc nsw i64 %.08.i.i.i.i.i.i.i331 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i329, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i309
  %.0.i.i.i.i.i.i312 = phi i32 [ %i.sg, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i309 ], [ %.0.i6.i.i.i.i.i.i332, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i329 ]
  %i.si = icmp slt i32 %.0.i.i.i.i.i.i312, 0      ; 2 uses
  %.19.i.i.i313 = select i1 %i.si, ptr %.0811.i.i.i307, ptr %.012.i.i.i306 ; 4 uses
  %.1.in.v.i.i.i314 = select i1 %i.si, i64 24, i64 16
  %.1.in.i.i.i315 = getelementptr inbounds nuw i8, ptr %.012.i.i.i306, i64 %.1.in.v.i.i.i314
  %.1.i.i.i316 = load ptr, ptr %.1.in.i.i.i315, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i317 = icmp eq ptr %.1.i.i.i316, null
  br i1 %.not.i.i.i317, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i318, label %.lr.ph.i.i.i305, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i318: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i311
  %i.sj = icmp eq ptr %.19.i.i.i313, %i.sa
  br i1 %i.sj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372.thread, label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i318
  %i.sk = getelementptr inbounds nuw i8, ptr %.19.i.i.i313, i64 40
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !295 ; 3 uses
  %i.sm = icmp eq i64 %i.sl, 0
  br i1 %i.sm, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i325, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i320

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i320: ; preds = %bb.dh
  %.sroa.speculated.i.i.i.i.i319 = call i64 @llvm.umin.i64(i64 %i.sl, i64 7)
  %i.sn = getelementptr inbounds nuw i8, ptr %.19.i.i.i313, i64 32
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !293
  %i.sp = call i32 @memcmp(ptr noundef nonnull %i.dk, ptr noundef %i.so, i64 noundef %.sroa.speculated.i.i.i.i.i319) #18 ; 2 uses
  %.not.i.i.i.i.i321 = icmp eq i32 %i.sp, 0
  br i1 %.not.i.i.i.i.i321, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i325, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit333

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i325: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i320, %bb.dh
  %i.sq = sub i64 7, %i.sl
  %spec.select7.i.i.i.i.i.i326 = call i64 @llvm.smax.i64(i64 %i.sq, i64 -2147483648)
  %.08.i.i.i.i.i.i327 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i326, i64 2147483647)
  %.0.i6.i.i.i.i.i328 = trunc nsw i64 %.08.i.i.i.i.i.i327 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit333

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit333: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i320, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i325
  %.0.i.i.i.i.i323 = phi i32 [ %i.sp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i320 ], [ %.0.i6.i.i.i.i.i328, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i325 ]
  %i.sr = icmp slt i32 %.0.i.i.i.i.i323, 0
  br i1 %i.sr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372.thread, label %bb.di

bb.di:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit333
  %i.ss = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK24json11_internal_lightgbm4Json12object_itemsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %._crit_edge.i.i334 unwind label %bb.dz ; 2 uses

._crit_edge.i.i334:                               ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #18
  store ptr %i.dm, ptr %24, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dm, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  store i64 9, ptr %i.dn, align 8, !tbaa !295
  store i8 0, ptr %i.ek, align 1, !tbaa !294
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !450 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %.not10.i.i.i338 = icmp eq ptr %i.su, null
  br i1 %.not10.i.i.i338, label %.critedge183, label %.lr.ph.i.i.i339

.lr.ph.i.i.i339:                                  ; preds = %._crit_edge.i.i334, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345
  %.012.i.i.i340 = phi ptr [ %.1.i.i.i350, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345 ], [ %i.su, %._crit_edge.i.i334 ] ; 4 uses
  %.0811.i.i.i341 = phi ptr [ %.19.i.i.i347, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345 ], [ %i.sv, %._crit_edge.i.i334 ]
  %i.sw = getelementptr inbounds nuw i8, ptr %.012.i.i.i340, i64 40
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !295 ; 3 uses
  %i.sy = icmp eq i64 %i.sx, 0
  br i1 %i.sy, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i363, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i343

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i343: ; preds = %.lr.ph.i.i.i339
  %.sroa.speculated.i.i.i.i.i.i342 = call i64 @llvm.umin.i64(i64 %i.sx, i64 9)
  %i.sz = getelementptr inbounds nuw i8, ptr %.012.i.i.i340, i64 32
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !293
  %i.tb = call i32 @memcmp(ptr noundef %i.ta, ptr noundef nonnull %i.dm, i64 noundef %.sroa.speculated.i.i.i.i.i.i342) #18 ; 2 uses
  %.not.i.i.i.i.i.i344 = icmp eq i32 %i.tb, 0
  br i1 %.not.i.i.i.i.i.i344, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i363, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i363: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i343, %.lr.ph.i.i.i339
  %i.tc = add i64 %i.sx, -9
  %spec.select7.i.i.i.i.i.i.i364 = call i64 @llvm.smax.i64(i64 %i.tc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i365 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i364, i64 2147483647)
  %.0.i6.i.i.i.i.i.i366 = trunc nsw i64 %.08.i.i.i.i.i.i.i365 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i363, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i343
  %.0.i.i.i.i.i.i346 = phi i32 [ %i.tb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i343 ], [ %.0.i6.i.i.i.i.i.i366, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i363 ]
  %i.td = icmp slt i32 %.0.i.i.i.i.i.i346, 0      ; 2 uses
  %.19.i.i.i347 = select i1 %i.td, ptr %.0811.i.i.i341, ptr %.012.i.i.i340 ; 4 uses
  %.1.in.v.i.i.i348 = select i1 %i.td, i64 24, i64 16
  %.1.in.i.i.i349 = getelementptr inbounds nuw i8, ptr %.012.i.i.i340, i64 %.1.in.v.i.i.i348
  %.1.i.i.i350 = load ptr, ptr %.1.in.i.i.i349, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i351 = icmp eq ptr %.1.i.i.i350, null
  br i1 %.not.i.i.i351, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i352, label %.lr.ph.i.i.i339, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i352: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i345
  %i.te = icmp eq ptr %.19.i.i.i347, %i.sv
  br i1 %i.te, label %.critedge183, label %bb.dj

bb.dj:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i352
  %i.tf = getelementptr inbounds nuw i8, ptr %.19.i.i.i347, i64 40
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !295 ; 3 uses
  %i.th = icmp eq i64 %i.tg, 0
  br i1 %i.th, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i359, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i354

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i354: ; preds = %bb.dj
  %.sroa.speculated.i.i.i.i.i353 = call i64 @llvm.umin.i64(i64 %i.tg, i64 9)
  %i.ti = getelementptr inbounds nuw i8, ptr %.19.i.i.i347, i64 32
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !293
  %i.tk = call i32 @memcmp(ptr noundef nonnull %i.dm, ptr noundef %i.tj, i64 noundef %.sroa.speculated.i.i.i.i.i353) #18 ; 2 uses
  %.not.i.i.i.i.i355 = icmp eq i32 %i.tk, 0
  br i1 %.not.i.i.i.i.i355, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i359, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i356

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i359: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i354, %bb.dj
  %i.tl = sub i64 9, %i.tg
  %spec.select7.i.i.i.i.i.i360 = call i64 @llvm.smax.i64(i64 %i.tl, i64 -2147483648)
  %.08.i.i.i.i.i.i361 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i360, i64 2147483647)
  %.0.i6.i.i.i.i.i362 = trunc nsw i64 %.08.i.i.i.i.i.i361 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i356

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i356: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i359, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i354
  %.0.i.i.i.i.i357 = phi i32 [ %i.tk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i354 ], [ %.0.i6.i.i.i.i.i362, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i359 ]
  %i.tm = icmp sgt i32 %.0.i.i.i.i.i357, -1
  br label %.critedge183

.critedge183:                                     ; preds = %._crit_edge.i.i334, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i352, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i356
  %i.tn = phi i1 [ false, %._crit_edge.i.i334 ], [ %i.tm, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i356 ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i352 ] ; 2 uses
  %.pre.pre = load ptr, ptr %23, align 8, !tbaa !293 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #18
  %i.to = icmp eq ptr %.pre.pre, %i.dk
  br i1 %i.to, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i318, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit333, %._crit_edge.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.eb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372: ; preds = %.critedge183
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br i1 %i.tn, label %bb.dk, label %bb.eb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373: ; preds = %.critedge183
  %i.tp = load i64, ptr %i.dk, align 8, !tbaa !294
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.tq) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br i1 %i.tn, label %bb.dk, label %bb.eb

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  %i.tr = load ptr, ptr %i.f, align 8, !tbaa !500, !noalias !2171 ; 2 uses
  %i.ts = load <2 x ptr>, ptr %6, align 16, !tbaa !333, !noalias !2171
  store <2 x ptr> %i.ts, ptr %25, align 16, !tbaa !333, !alias.scope !2171
  %.not.i.i.i.i.i.i374 = icmp eq ptr %i.tr, null
  br i1 %.not.i.i.i.i.i.i374, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8 ; 3 uses
  %i.tu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294, !noalias !2171
  %.not.i.i.i.i.i.i.i375 = icmp eq i8 %i.tu, 0
  br i1 %.not.i.i.i.i.i.i.i375, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.tv = load i32, ptr %i.tt, align 4, !tbaa !198, !noalias !2171
  %i.tw = add nsw i32 %i.tv, 1
  store i32 %i.tw, ptr %i.tt, align 4, !tbaa !198, !noalias !2171
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.tx = atomicrmw volatile add ptr %i.tt, i32 1 acq_rel, align 4, !noalias !2171 ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %bb.dk
  %i.ty = load i32, ptr %2, align 4, !tbaa !198, !noalias !2171 ; 2 uses
  store i32 %i.ty, ptr %i.dp, align 16, !tbaa !509, !alias.scope !2171
  %i.tz = load ptr, ptr %i.ad, align 8, !tbaa !514 ; 5 uses
  %i.ua = load ptr, ptr %i.af, align 8, !tbaa !2169
  %i.ub = getelementptr inbounds i8, ptr %i.ua, i64 -24
  %.not.i.i.i377 = icmp eq ptr %i.tz, %i.ub
  br i1 %.not.i.i.i377, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  store ptr null, ptr %i.uc, align 8, !tbaa !500
  %i.ud = load <2 x ptr>, ptr %25, align 16, !tbaa !333
  store ptr null, ptr %i.do, align 8, !tbaa !500
  store <2 x ptr> %i.ud, ptr %i.tz, align 8, !tbaa !333
  store ptr null, ptr %25, align 16, !tbaa !515
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  store i32 %i.ty, ptr %i.ue, align 8, !tbaa !509
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  store ptr %i.uf, ptr %i.ad, align 8, !tbaa !514
  br label %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit379

bb.dq:                                            ; preds = %bb.do
  invoke void @_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(20) %25)
          to label %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit379 unwind label %bb.ea

_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit379: ; preds = %bb.dp, %bb.dq
  %i.ug = load ptr, ptr %i.do, align 8, !tbaa !500 ; 8 uses
  %.not.i.i.i.i380 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i.i380, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit384, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit379
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 4 uses
  %i.ui = load atomic i64, ptr %i.uh acquire, align 8 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, 4294967297
  %i.uk = trunc i64 %i.ui to i32                  ; 2 uses
  br i1 %i.uj, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 0, ptr %i.uh, align 8, !tbaa !517
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  store i32 0, ptr %i.ul, align 4, !tbaa !518
  %i.um = load ptr, ptr %i.ug, align 8, !tbaa !226
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #18, !inline_history !28
  %i.up = load ptr, ptr %i.ug, align 8, !tbaa !226
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #18, !inline_history !28
  br label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit384

bb.dt:                                            ; preds = %bb.dr
  %i.us = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294
  %.not.i.i.i.i.i381 = icmp eq i8 %i.us, 0
  br i1 %.not.i.i.i.i.i381, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ut = add nsw i32 %i.uk, -1
  store i32 %i.ut, ptr %i.uh, align 8, !tbaa !198
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i382

bb.dv:                                            ; preds = %bb.dt
  %i.uu = atomicrmw volatile add ptr %i.uh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i382

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i382: ; preds = %bb.dv, %bb.du
  %.0.i.i.i.i.i.i383 = phi i32 [ %i.uk, %bb.du ], [ %i.uu, %bb.dv ]
  %i.uv = icmp eq i32 %.0.i.i.i.i.i.i383, 1
  br i1 %i.uv, label %bb.dw, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit384, !prof !365

bb.dw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i382
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #18
  br label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit384

_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit384: ; preds = %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit379, %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i382, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.eb

bb.dx:                                            ; preds = %_ZNSt13unordered_mapIiN8LightGBM9SplitInfoESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEEixERS7_.exit257, %_ZNSt13unordered_mapIiN8LightGBM9SplitInfoESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %bb.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZN24json11_internal_lightgbm4JsonD2Ev.exit276, %bb.bv
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.dy:                                            ; preds = %._crit_edge.i.i289
  %i.ux = landingpad { ptr, i32 }
          cleanup
  %i.uy = load ptr, ptr %22, align 8, !tbaa !293  ; 2 uses
  %i.uz = icmp eq ptr %i.uy, %i.di
  br i1 %i.uz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %bb.dy
  %i.va = load i64, ptr %i.di, align 8, !tbaa !294
  %i.vb = add i64 %i.va, 1
  call void @_ZdlPvm(ptr noundef %i.uy, i64 noundef %i.vb) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18
  br label %bb.fq

bb.dz:                                            ; preds = %bb.di
  %i.vc = landingpad { ptr, i32 }
          cleanup
  %i.vd = load ptr, ptr %23, align 8, !tbaa !293  ; 2 uses
  %i.ve = icmp eq ptr %i.vd, %i.dk
  br i1 %i.ve, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %bb.dz
  %i.vf = load i64, ptr %i.dk, align 8, !tbaa !294
  %i.vg = add i64 %i.vf, 1
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.vg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #18
  br label %bb.fq

bb.ea:                                            ; preds = %bb.dq
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %25) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #18
  br label %bb.fq

bb.eb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit288
  %i.vi = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK24json11_internal_lightgbm4Json12object_itemsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %._crit_edge.i.i397 unwind label %bb.dx ; 2 uses

._crit_edge.i.i397:                               ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #18
  store ptr %i.dq, ptr %26, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dq, ptr noundef nonnull align 1 dereferenceable(5) @.str.46, i64 5, i1 false)
  store i64 5, ptr %i.dr, align 8, !tbaa !295
  store i8 0, ptr %i.el, align 1, !tbaa !294
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !450 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 2 uses
  %.not10.i.i.i401 = icmp eq ptr %i.vk, null
  br i1 %.not10.i.i.i401, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433.thread, label %.lr.ph.i.i.i402

.lr.ph.i.i.i402:                                  ; preds = %._crit_edge.i.i397, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i408
  %.012.i.i.i403 = phi ptr [ %.1.i.i.i413, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i408 ], [ %i.vk, %._crit_edge.i.i397 ] ; 4 uses
  %.0811.i.i.i404 = phi ptr [ %.19.i.i.i410, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i408 ], [ %i.vl, %._crit_edge.i.i397 ]
  %i.vm = getelementptr inbounds nuw i8, ptr %.012.i.i.i403, i64 40
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !295 ; 3 uses
  %i.vo = icmp eq i64 %i.vn, 0
  br i1 %i.vo, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i426, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i406

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i406: ; preds = %.lr.ph.i.i.i402
  %.sroa.speculated.i.i.i.i.i.i405 = call i64 @llvm.umin.i64(i64 %i.vn, i64 5)
  %i.vp = getelementptr inbounds nuw i8, ptr %.012.i.i.i403, i64 32
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !293
  %i.vr = call i32 @memcmp(ptr noundef %i.vq, ptr noundef nonnull %i.dq, i64 noundef %.sroa.speculated.i.i.i.i.i.i405) #18 ; 2 uses
  %.not.i.i.i.i.i.i407 = icmp eq i32 %i.vr, 0
  br i1 %.not.i.i.i.i.i.i407, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i426, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i408

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i426: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i406, %.lr.ph.i.i.i402
  %i.vs = add i64 %i.vn, -5
  %spec.select7.i.i.i.i.i.i.i427 = call i64 @llvm.smax.i64(i64 %i.vs, i64 -2147483648)
  %.08.i.i.i.i.i.i.i428 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i427, i64 2147483647)
end_hunk_1
begin_hunk_2_@_ZN8LightGBM17SerialTreeLearner11ForceSplitsEPNS_4TreeEPiS3_S3_:bb.a
bb.el:                                            ; preds = %bb.ek
  %i.xa = add nsw i32 %i.wr, -1
  store i32 %i.xa, ptr %i.wo, align 8, !tbaa !198
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i444

bb.em:                                            ; preds = %bb.ek
  %i.xb = atomicrmw volatile add ptr %i.wo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i444

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i444: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i.i.i445 = phi i32 [ %i.wr, %bb.el ], [ %i.xb, %bb.em ]
  %i.xc = icmp eq i32 %.0.i.i.i.i.i.i445, 1
  br i1 %i.xc, label %bb.en, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i446, !prof !365

bb.en:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i444
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wn) #18
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i446

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i446: ; preds = %bb.en, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i444, %bb.ej, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i441
  store ptr %i.wg, ptr %i.df, align 8, !tbaa !500
  br label %_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit448

_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit448: ; preds = %bb.ed, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i446
  %i.xd = load ptr, ptr %27, align 8, !tbaa !293  ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.ds
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit448
  %i.xf = load i64, ptr %i.ds, align 8, !tbaa !294
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451: ; preds = %_ZN24json11_internal_lightgbm4JsonaSERKS0_.exit448, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  %i.xh = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK24json11_internal_lightgbm4Json12object_itemsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %._crit_edge.i.i452 unwind label %bb.dx ; 2 uses

._crit_edge.i.i452:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  store ptr %i.du, ptr %28, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.du, ptr noundef nonnull align 1 dereferenceable(7) @.str.43, i64 7, i1 false)
  store i64 7, ptr %i.dv, align 8, !tbaa !295
  store i8 0, ptr %i.en, align 1, !tbaa !294
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !450 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %.not10.i.i.i456 = icmp eq ptr %i.xj, null
  br i1 %.not10.i.i.i456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524.thread, label %.lr.ph.i.i.i457

.lr.ph.i.i.i457:                                  ; preds = %._crit_edge.i.i452, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463
  %.012.i.i.i458 = phi ptr [ %.1.i.i.i468, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463 ], [ %i.xj, %._crit_edge.i.i452 ] ; 4 uses
  %.0811.i.i.i459 = phi ptr [ %.19.i.i.i465, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463 ], [ %i.xk, %._crit_edge.i.i452 ]
  %i.xl = getelementptr inbounds nuw i8, ptr %.012.i.i.i458, i64 40
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !295 ; 3 uses
  %i.xn = icmp eq i64 %i.xm, 0
  br i1 %i.xn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i481, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i461

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i461: ; preds = %.lr.ph.i.i.i457
  %.sroa.speculated.i.i.i.i.i.i460 = call i64 @llvm.umin.i64(i64 %i.xm, i64 7)
  %i.xo = getelementptr inbounds nuw i8, ptr %.012.i.i.i458, i64 32
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !293
  %i.xq = call i32 @memcmp(ptr noundef %i.xp, ptr noundef nonnull %i.du, i64 noundef %.sroa.speculated.i.i.i.i.i.i460) #18 ; 2 uses
  %.not.i.i.i.i.i.i462 = icmp eq i32 %i.xq, 0
  br i1 %.not.i.i.i.i.i.i462, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i481, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i481: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i461, %.lr.ph.i.i.i457
  %i.xr = add i64 %i.xm, -7
  %spec.select7.i.i.i.i.i.i.i482 = call i64 @llvm.smax.i64(i64 %i.xr, i64 -2147483648)
  %.08.i.i.i.i.i.i.i483 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i482, i64 2147483647)
  %.0.i6.i.i.i.i.i.i484 = trunc nsw i64 %.08.i.i.i.i.i.i.i483 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i481, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i461
  %.0.i.i.i.i.i.i464 = phi i32 [ %i.xq, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i461 ], [ %.0.i6.i.i.i.i.i.i484, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i481 ]
  %i.xs = icmp slt i32 %.0.i.i.i.i.i.i464, 0      ; 2 uses
  %.19.i.i.i465 = select i1 %i.xs, ptr %.0811.i.i.i459, ptr %.012.i.i.i458 ; 4 uses
  %.1.in.v.i.i.i466 = select i1 %i.xs, i64 24, i64 16
  %.1.in.i.i.i467 = getelementptr inbounds nuw i8, ptr %.012.i.i.i458, i64 %.1.in.v.i.i.i466
  %.1.i.i.i468 = load ptr, ptr %.1.in.i.i.i467, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i469 = icmp eq ptr %.1.i.i.i468, null
  br i1 %.not.i.i.i469, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i470, label %.lr.ph.i.i.i457, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i470: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i463
  %i.xt = icmp eq ptr %.19.i.i.i465, %i.xk
  br i1 %i.xt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524.thread, label %bb.eo

bb.eo:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i470
  %i.xu = getelementptr inbounds nuw i8, ptr %.19.i.i.i465, i64 40
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !295 ; 3 uses
  %i.xw = icmp eq i64 %i.xv, 0
  br i1 %i.xw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i477, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i472

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i472: ; preds = %bb.eo
  %.sroa.speculated.i.i.i.i.i471 = call i64 @llvm.umin.i64(i64 %i.xv, i64 7)
  %i.xx = getelementptr inbounds nuw i8, ptr %.19.i.i.i465, i64 32
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !293
  %i.xz = call i32 @memcmp(ptr noundef nonnull %i.du, ptr noundef %i.xy, i64 noundef %.sroa.speculated.i.i.i.i.i471) #18 ; 2 uses
  %.not.i.i.i.i.i473 = icmp eq i32 %i.xz, 0
  br i1 %.not.i.i.i.i.i473, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i477, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit485

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i477: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i472, %bb.eo
  %i.ya = sub i64 7, %i.xv
  %spec.select7.i.i.i.i.i.i478 = call i64 @llvm.smax.i64(i64 %i.ya, i64 -2147483648)
  %.08.i.i.i.i.i.i479 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i478, i64 2147483647)
  %.0.i6.i.i.i.i.i480 = trunc nsw i64 %.08.i.i.i.i.i.i479 to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit485

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit485: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i472, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i477
  %.0.i.i.i.i.i475 = phi i32 [ %i.xz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i472 ], [ %.0.i6.i.i.i.i.i480, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i477 ]
  %i.yb = icmp slt i32 %.0.i.i.i.i.i475, 0
  br i1 %i.yb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524.thread, label %bb.ep

bb.ep:                                            ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit485
  %i.yc = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK24json11_internal_lightgbm4Json12object_itemsB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %._crit_edge.i.i486 unwind label %bb.ff ; 2 uses

._crit_edge.i.i486:                               ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  store ptr %i.dw, ptr %29, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dw, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  store i64 9, ptr %i.dx, align 8, !tbaa !295
  store i8 0, ptr %i.eo, align 1, !tbaa !294
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !450 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  %.not10.i.i.i490 = icmp eq ptr %i.ye, null
  br i1 %.not10.i.i.i490, label %.critedge187, label %.lr.ph.i.i.i491

.lr.ph.i.i.i491:                                  ; preds = %._crit_edge.i.i486, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497
  %.012.i.i.i492 = phi ptr [ %.1.i.i.i502, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497 ], [ %i.ye, %._crit_edge.i.i486 ] ; 4 uses
  %.0811.i.i.i493 = phi ptr [ %.19.i.i.i499, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497 ], [ %i.yf, %._crit_edge.i.i486 ]
  %i.yg = getelementptr inbounds nuw i8, ptr %.012.i.i.i492, i64 40
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !295 ; 3 uses
  %i.yi = icmp eq i64 %i.yh, 0
  br i1 %i.yi, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i515, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i495

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i495: ; preds = %.lr.ph.i.i.i491
  %.sroa.speculated.i.i.i.i.i.i494 = call i64 @llvm.umin.i64(i64 %i.yh, i64 9)
  %i.yj = getelementptr inbounds nuw i8, ptr %.012.i.i.i492, i64 32
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !293
  %i.yl = call i32 @memcmp(ptr noundef %i.yk, ptr noundef nonnull %i.dw, i64 noundef %.sroa.speculated.i.i.i.i.i.i494) #18 ; 2 uses
  %.not.i.i.i.i.i.i496 = icmp eq i32 %i.yl, 0
  br i1 %.not.i.i.i.i.i.i496, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i515, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i515: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i495, %.lr.ph.i.i.i491
  %i.ym = add i64 %i.yh, -9
  %spec.select7.i.i.i.i.i.i.i516 = call i64 @llvm.smax.i64(i64 %i.ym, i64 -2147483648)
  %.08.i.i.i.i.i.i.i517 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i516, i64 2147483647)
  %.0.i6.i.i.i.i.i.i518 = trunc nsw i64 %.08.i.i.i.i.i.i.i517 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i515, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i495
  %.0.i.i.i.i.i.i498 = phi i32 [ %i.yl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i495 ], [ %.0.i6.i.i.i.i.i.i518, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i515 ]
  %i.yn = icmp slt i32 %.0.i.i.i.i.i.i498, 0      ; 2 uses
  %.19.i.i.i499 = select i1 %i.yn, ptr %.0811.i.i.i493, ptr %.012.i.i.i492 ; 4 uses
  %.1.in.v.i.i.i500 = select i1 %i.yn, i64 24, i64 16
  %.1.in.i.i.i501 = getelementptr inbounds nuw i8, ptr %.012.i.i.i492, i64 %.1.in.v.i.i.i500
  %.1.i.i.i502 = load ptr, ptr %.1.in.i.i.i501, align 8, !tbaa !454 ; 2 uses
  %.not.i.i.i503 = icmp eq ptr %.1.i.i.i502, null
  br i1 %.not.i.i.i503, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i504, label %.lr.ph.i.i.i491, !llvm.loop !31

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i504: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i497
  %i.yo = icmp eq ptr %.19.i.i.i499, %i.yf
  br i1 %i.yo, label %.critedge187, label %bb.eq

bb.eq:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i504
  %i.yp = getelementptr inbounds nuw i8, ptr %.19.i.i.i499, i64 40
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !295 ; 3 uses
  %i.yr = icmp eq i64 %i.yq, 0
  br i1 %i.yr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i511, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i506

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i506: ; preds = %bb.eq
  %.sroa.speculated.i.i.i.i.i505 = call i64 @llvm.umin.i64(i64 %i.yq, i64 9)
  %i.ys = getelementptr inbounds nuw i8, ptr %.19.i.i.i499, i64 32
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !293
  %i.yu = call i32 @memcmp(ptr noundef nonnull %i.dw, ptr noundef %i.yt, i64 noundef %.sroa.speculated.i.i.i.i.i505) #18 ; 2 uses
  %.not.i.i.i.i.i507 = icmp eq i32 %i.yu, 0
  br i1 %.not.i.i.i.i.i507, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i511, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i508

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i511: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i506, %bb.eq
  %i.yv = sub i64 9, %i.yq
  %spec.select7.i.i.i.i.i.i512 = call i64 @llvm.smax.i64(i64 %i.yv, i64 -2147483648)
  %.08.i.i.i.i.i.i513 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i512, i64 2147483647)
  %.0.i6.i.i.i.i.i514 = trunc nsw i64 %.08.i.i.i.i.i.i513 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i508

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i508: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i511, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i506
  %.0.i.i.i.i.i509 = phi i32 [ %i.yu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i506 ], [ %.0.i6.i.i.i.i.i514, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i511 ]
  %i.yw = icmp sgt i32 %.0.i.i.i.i.i509, -1
  br label %.critedge187

.critedge187:                                     ; preds = %._crit_edge.i.i486, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i504, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i508
  %i.yx = phi i1 [ false, %._crit_edge.i.i486 ], [ %i.yw, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i508 ], [ false, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i504 ] ; 2 uses
  %.pre646.pre = load ptr, ptr %28, align 8, !tbaa !293 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18
  %i.yy = icmp eq ptr %.pre646.pre, %i.du
  br i1 %i.yy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N24json11_internal_lightgbm4JsonEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i470, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN24json11_internal_lightgbm4JsonESt4lessIS5_ESaISt4pairIKS5_S7_EEE5countERSB_.exit485, %._crit_edge.i.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.fh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524: ; preds = %.critedge187
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br i1 %i.yx, label %bb.er, label %bb.fh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525: ; preds = %.critedge187
  %i.yz = load i64, ptr %i.du, align 8, !tbaa !294
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %.pre646.pre, i64 noundef %i.za) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br i1 %i.yx, label %bb.er, label %bb.fh

bb.er:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  %i.zb = load ptr, ptr %i.df, align 8, !tbaa !500, !noalias !2172 ; 2 uses
  %i.zc = load <2 x ptr>, ptr %7, align 16, !tbaa !333, !noalias !2172
  store <2 x ptr> %i.zc, ptr %30, align 16, !tbaa !333, !alias.scope !2172
  %.not.i.i.i.i.i.i526 = icmp eq ptr %i.zb, null
  br i1 %.not.i.i.i.i.i.i526, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 8 ; 3 uses
  %i.ze = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294, !noalias !2172
  %.not.i.i.i.i.i.i.i527 = icmp eq i8 %i.ze, 0
  br i1 %.not.i.i.i.i.i.i.i527, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zf = load i32, ptr %i.zd, align 4, !tbaa !198, !noalias !2172
  %i.zg = add nsw i32 %i.zf, 1
  store i32 %i.zg, ptr %i.zd, align 4, !tbaa !198, !noalias !2172
  br label %bb.ev

bb.eu:                                            ; preds = %bb.es
  %i.zh = atomicrmw volatile add ptr %i.zd, i32 1 acq_rel, align 4, !noalias !2172 ; 0 uses
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et, %bb.er
  %i.zi = load i32, ptr %3, align 4, !tbaa !198, !noalias !2172 ; 2 uses
  store i32 %i.zi, ptr %i.dz, align 16, !tbaa !509, !alias.scope !2172
  %i.zj = load ptr, ptr %i.ad, align 8, !tbaa !514 ; 5 uses
  %i.zk = load ptr, ptr %i.af, align 8, !tbaa !2169
  %i.zl = getelementptr inbounds i8, ptr %i.zk, i64 -24
  %.not.i.i.i529 = icmp eq ptr %i.zj, %i.zl
  br i1 %.not.i.i.i529, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store ptr null, ptr %i.zm, align 8, !tbaa !500
  %i.zn = load <2 x ptr>, ptr %30, align 16, !tbaa !333
  store ptr null, ptr %i.dy, align 8, !tbaa !500
  store <2 x ptr> %i.zn, ptr %i.zj, align 8, !tbaa !333
  store ptr null, ptr %30, align 16, !tbaa !515
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store i32 %i.zi, ptr %i.zo, align 8, !tbaa !509
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zj, i64 24
  store ptr %i.zp, ptr %i.ad, align 8, !tbaa !514
  br label %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit531

bb.ex:                                            ; preds = %bb.ev
  invoke void @_ZNSt5dequeISt4pairIN24json11_internal_lightgbm4JsonEiESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(20) %30)
          to label %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit531 unwind label %bb.fg

_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit531: ; preds = %bb.ew, %bb.ex
  %i.zq = load ptr, ptr %i.dy, align 8, !tbaa !500 ; 8 uses
  %.not.i.i.i.i532 = icmp eq ptr %i.zq, null
  br i1 %.not.i.i.i.i532, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit536, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit531
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8 ; 4 uses
  %i.zs = load atomic i64, ptr %i.zr acquire, align 8 ; 2 uses
  %i.zt = icmp eq i64 %i.zs, 4294967297
  %i.zu = trunc i64 %i.zs to i32                  ; 2 uses
  br i1 %i.zt, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 0, ptr %i.zr, align 8, !tbaa !517
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 12
  store i32 0, ptr %i.zv, align 4, !tbaa !518
  %i.zw = load ptr, ptr %i.zq, align 8, !tbaa !226
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16
  %i.zy = load ptr, ptr %i.zx, align 8
  call void %i.zy(ptr noundef nonnull align 8 dereferenceable(16) %i.zq) #18, !inline_history !28
  %i.zz = load ptr, ptr %i.zq, align 8, !tbaa !226
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 24
  %i.aab = load ptr, ptr %i.aaa, align 8
  call void %i.aab(ptr noundef nonnull align 8 dereferenceable(16) %i.zq) #18, !inline_history !28
  br label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit536

bb.fa:                                            ; preds = %bb.ey
  %i.aac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !294
  %.not.i.i.i.i.i533 = icmp eq i8 %i.aac, 0
  br i1 %.not.i.i.i.i.i533, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aad = add nsw i32 %i.zu, -1
  store i32 %i.aad, ptr %i.zr, align 8, !tbaa !198
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534

bb.fc:                                            ; preds = %bb.fa
  %i.aae = atomicrmw volatile add ptr %i.zr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534: ; preds = %bb.fc, %bb.fb
  %.0.i.i.i.i.i.i535 = phi i32 [ %i.zu, %bb.fb ], [ %i.aae, %bb.fc ]
  %i.aaf = icmp eq i32 %.0.i.i.i.i.i.i535, 1
  br i1 %i.aaf, label %bb.fd, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit536, !prof !365

bb.fd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zq) #18
  br label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit536

_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit536: ; preds = %_ZNSt5queueISt4pairIN24json11_internal_lightgbm4JsonEiESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit531, %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i534, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.fh

bb.fe:                                            ; preds = %._crit_edge.i.i434
  %i.aag = landingpad { ptr, i32 }
          cleanup
  %i.aah = load ptr, ptr %27, align 8, !tbaa !293 ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.ds
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540: ; preds = %bb.fe
  %i.aaj = load i64, ptr %i.ds, align 8, !tbaa !294
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i540
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  br label %bb.fq

bb.ff:                                            ; preds = %bb.ep
  %i.aal = landingpad { ptr, i32 }
          cleanup
  %i.aam = load ptr, ptr %28, align 8, !tbaa !293 ; 2 uses
  %i.aan = icmp eq ptr %i.aam, %i.du
  br i1 %i.aan, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546: ; preds = %bb.ff
  %i.aao = load i64, ptr %i.du, align 8, !tbaa !294
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aap) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i546
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.fq

bb.fg:                                            ; preds = %bb.ex
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.fq

bb.fh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i524, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit525, %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit433
  %i.aar = add nsw i32 %.0120, 1
  %i.aas = load i32, ptr %2, align 4, !tbaa !198
  %i.aat = sext i32 %i.aas to i64
  %i.aau = load ptr, ptr %i.ea, align 8, !tbaa !195
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %i.aat
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !198
  %i.aax = load i32, ptr %4, align 4, !tbaa !198
  %.sroa.speculated577 = call i32 @llvm.smax.i32(i32 %i.aax, i32 %i.aaw)
  store i32 %.sroa.speculated577, ptr %4, align 4, !tbaa !198
  br label %_ZNSt13unordered_mapIiN8LightGBM9SplitInfoESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread

_ZNSt13unordered_mapIiN8LightGBM9SplitInfoESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.br, %..loopexit_crit_edge21.i.i.i.i, %bb.fh
  %.1128 = phi i1 [ %.0127, %bb.fh ], [ true, %..loopexit_crit_edge21.i.i.i.i ], [ true, %.preheader ], [ true, %bb.br ], [ true, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aay = phi i1 [ true, %bb.fh ], [ false, %..loopexit_crit_edge21.i.i.i.i ], [ false, %.preheader ], [ false, %bb.br ], [ false, %.lr.ph.i.i.i.i ]
  %.1121 = phi i32 [ %i.aar, %bb.fh ], [ %.0120, %..loopexit_crit_edge21.i.i.i.i ], [ %.0120, %.preheader ], [ %.0120, %bb.br ], [ %.0120, %.lr.ph.i.i.i.i ] ; 2 uses
  %.1119 = phi i8 [ %i.nk, %bb.fh ], [ %.0118, %..loopexit_crit_edge21.i.i.i.i ], [ %.0118, %.preheader ], [ %.0118, %bb.br ], [ %.0118, %.lr.ph.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.aaz = load ptr, ptr %i.cz, align 8, !tbaa !500 ; 8 uses
  %.not.i.i.i.i549 = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i.i.i549, label %_ZNSt4pairIN24json11_internal_lightgbm4JsonEiED2Ev.exit553, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt13unordered_mapIiN8LightGBM9SplitInfoESt4hashIiESt8equal_toIiESaISt4pairIKiS1_EEE4findERS7_.exit.thread
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8 ; 4 uses
  %i.abb = load atomic i64, ptr %i.aba acquire, align 8 ; 2 uses
  %i.abc = icmp eq i64 %i.abb, 4294967297
  %i.abd = trunc i64 %i.abb to i32                ; 2 uses
  br i1 %i.abc, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  store i32 0, ptr %i.aba, align 8, !tbaa !517
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaz, i64 12
  store i32 0, ptr %i.abe, align 4, !tbaa !518
  %i.abf = load ptr, ptr %i.aaz, align 8, !tbaa !226
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 16
  %i.abh = load ptr, ptr %i.abg, align 8
  call void %i.abh(ptr noundef nonnull align 8 dereferenceable(16) %i.aaz) #18, !inline_history !28
  %i.abi = load ptr, ptr %i.aaz, align 8, !tbaa !226
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 24
  %i.abk = load ptr, ptr %i.abj, align 8
  call void %i.abk(ptr noundef nonnull align 8 dereferenceable(16) %i.aaz) #18, !inline_history !28
end_hunk_2
