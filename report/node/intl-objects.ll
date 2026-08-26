Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/intl-objects?download=true
inline.NumInlined: 4175
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 65
loop-unroll.NumUnrolledNotLatch: 5
begin_hunk_0_@_ZN2v88internal4Intl14CompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_NS1_21CompareStringsOptionsE:bb.a
  %i.eo = trunc nuw i8 %i.en to i1
  store i8 0, ptr %i.em, align 8
  br i1 %i.eo, label %bb.ad, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

bb.ad:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  %i.ep = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #25
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i: ; preds = %bb.ae, %bb.ad, %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.eq = load i64, ptr %.sroa.061.1, align 8
  %i.er = add i64 %i.eq, -1
  %i.es = inttoptr i64 %i.er to ptr               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !259, !noalias !256
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.eu = load i32, ptr %i.et, align 4, !noalias !262
  %i.ev = load atomic volatile i64, ptr %i.es acquire, align 8, !noalias !265
  %i.ew = add i64 %i.ev, 11
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load atomic volatile i16, ptr %i.ex monotonic, align 2, !noalias !265
  %i.ez = and i16 %i.ey, 15
  switch i16 %i.ez, label %bb.ap [
    i16 8, label %bb.af
    i16 0, label %bb.ag
    i16 9, label %bb.aq
    i16 1, label %bb.aq
    i16 10, label %bb.ah
    i16 2, label %bb.al
    i16 11, label %bb.aq
    i16 3, label %bb.aq
    i16 13, label %bb.aq
    i16 5, label %bb.aq
  ]

bb.af:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i

bb.ag:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i

bb.ah:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !268
  %i.fe = inttoptr i64 %i.fd to ptr               ; 6 uses
  %i.ff = load atomic volatile i64, ptr %i.es monotonic, align 8, !noalias !268
  %i.fg = add i64 %i.ff, 11
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load atomic volatile i16, ptr %i.fh monotonic, align 2, !noalias !268
  %i.fj = and i16 %i.fi, 16
  %.not.i27.i = icmp eq i16 %i.fj, 0
  br i1 %.not.i27.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = load ptr, ptr %i.fe, align 8, !noalias !268
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !268
  %i.fn = call noundef zeroext i1 %i.fm(ptr noundef nonnull align 8 dereferenceable(8) %i.fe) #25, !noalias !268, !inline_history !250
  br i1 %i.fn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25, !noalias !268
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !268
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %i.fq = load ptr, ptr %i.fe, align 8, !noalias !268
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !noalias !268
  %i.ft = call noundef ptr %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #25, !noalias !268, !inline_history !250
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i

bb.al:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !noalias !273
  %i.fw = inttoptr i64 %i.fv to ptr               ; 6 uses
  %i.fx = load atomic volatile i64, ptr %i.es monotonic, align 8, !noalias !273
  %i.fy = add i64 %i.fx, 11
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = load atomic volatile i16, ptr %i.fz monotonic, align 2, !noalias !273
  %i.gb = and i16 %i.ga, 16
  %.not.i30.i = icmp eq i16 %i.gb, 0
  br i1 %.not.i30.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = load ptr, ptr %i.fw, align 8, !noalias !273
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !273
  %i.gf = call noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.fw) #25, !noalias !273, !inline_history !254
  br i1 %i.gf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #25, !noalias !273
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !273
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.gi = load ptr, ptr %i.fw, align 8, !noalias !273
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 72
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !273
  %i.gl = call noundef ptr %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #25, !noalias !273, !inline_history !254
  br label %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i

bb.ap:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.64) #27, !noalias !276
  unreachable

_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i: ; preds = %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ag, %bb.af
  %.sroa.062.sroa.0.0.ph.i = phi ptr [ %i.gh, %bb.an ], [ %i.fp, %bb.aj ], [ %i.gl, %bb.ao ], [ %i.ft, %bb.ak ], [ %i.fb, %bb.ag ], [ %i.fa, %bb.af ]
  %.sroa.062.sroa.8.0.ph.i = phi i32 [ 2, %bb.an ], [ 1, %bb.aj ], [ 2, %bb.ao ], [ 1, %bb.ak ], [ 2, %bb.ag ], [ 1, %bb.af ]
  store ptr %.sroa.062.sroa.0.0.ph.i, ptr %9, align 8
  %.sroa.062.sroa.7.0..sroa_idx138.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.eu, ptr %.sroa.062.sroa.7.0..sroa_idx138.i, align 8
  %.sroa.062.sroa.8.0..sroa_idx144.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.062.sroa.8.0.ph.i, ptr %.sroa.062.sroa.8.0..sroa_idx144.i, align 4
  %.sroa.062.sroa.9.0..sroa_idx150.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %7, ptr %.sroa.062.sroa.9.0..sroa_idx150.i, align 8
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit16.i

bb.aq:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit.i
  call void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::String::FlatContent") align 8 %9, ptr noundef nonnull align 4 dereferenceable(16) %i.es, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit16.i

_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit16.i: ; preds = %bb.aq, %_ZNRSt8optionalIN2v88internal6String11FlatContentEE5valueEv.exit33.i
  %i.gm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 8, !range !12, !noundef !13
  %i.go = trunc nuw i8 %i.gn to i1
  store i8 0, ptr %i.gm, align 8
  br i1 %i.go, label %bb.ar, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit35.i

bb.ar:                                            ; preds = %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit16.i
  %i.gp = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i.i.i.i34.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i34.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit35.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gp) #25
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit35.i

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit35.i: ; preds = %bb.as, %bb.ar, %_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE.exit16.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !256
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = icmp eq i32 %i.gr, 1                    ; 3 uses
  %i.gt = load ptr, ptr %8, align 8               ; 8 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = icmp eq i32 %i.gv, 1                    ; 4 uses
  %i.gx = load ptr, ptr %9, align 8               ; 8 uses
  %.not56.i.i.i = icmp eq i32 %.sroa.speculated.i, 0 ; 4 uses
  br i1 %i.gs, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit35.i
  br i1 %i.gw, label %bb.au, label %bb.bc

bb.au:                                            ; preds = %bb.at
  br i1 %.not56.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.au
  %wide.trip.count.i.i.i = zext i32 %.sroa.speculated.i to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.bb, %.lr.ph.i.i.i
  %.sroa.9.0.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.sroa.9.1.i, %bb.bb ] ; 3 uses
  %.sroa.35.0.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %.sroa.35.1.i, %bb.bb ] ; 4 uses
  %.sroa.46.0.i = phi i8 [ 0, %.lr.ph.i.i.i ], [ %.sroa.46.1.i, %bb.bb ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bb ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.i
  %i.gz = load i8, ptr %i.gy, align 1             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i.i.i
  %i.hb = load i8, ptr %i.ha, align 1             ; 2 uses
  %i.hc = zext i8 %i.gz to i64                    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1             ; 3 uses
  %.not49.i.i.i = icmp eq i8 %i.he, 0
  %i.hf = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 5 uses
  br i1 %.not49.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hg = zext i8 %i.hb to i64                    ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1             ; 3 uses
  %.not50.i.i.i = icmp eq i8 %i.hi, 0
  br i1 %.not50.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not.i.i.i = icmp eq i8 %i.he, %i.hi
  br i1 %.not.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hj = call i32 @llvm.ucmp.i32.i8(i8 %i.he, i8 %i.hi)
  br label %.loopexit.i

bb.az:                                            ; preds = %bb.ax
  %.not41.i.i.i = icmp ne i8 %i.gz, %i.hb
  %i.hk = icmp eq i32 %.sroa.9.0.i, 0
  %or.cond.i42 = select i1 %.not41.i.i.i, i1 %i.hk, i1 false
  br i1 %or.cond.i42, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.hc
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.hg
  %i.ho = load i8, ptr %i.hn, align 1
  %i.hp = call i32 @llvm.ucmp.i32.i8(i8 %i.hm, i8 %i.ho)
  %i.hq = trunc nuw i8 %.sroa.46.0.i to i1
  %spec.select.i = select i1 %i.hq, i32 %.sroa.35.0.i, i32 %i.hf
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.9.1.i = phi i32 [ %.sroa.9.0.i, %bb.az ], [ %i.hp, %bb.ba ] ; 2 uses
  %.sroa.35.1.i = phi i32 [ %.sroa.35.0.i, %bb.az ], [ %spec.select.i, %bb.ba ] ; 2 uses
  %.sroa.46.1.i = phi i8 [ %.sroa.46.0.i, %bb.az ], [ 1, %bb.ba ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.av, !llvm.loop !277

bb.bc:                                            ; preds = %bb.at
  br i1 %.not56.i.i.i, label %.loopexit.i, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %bb.bc
  %wide.trip.count.i22.i.i = zext i32 %.sroa.speculated.i to i64
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bi, %.lr.ph.i21.i.i
  %.sroa.9.3.i = phi i32 [ 0, %.lr.ph.i21.i.i ], [ %.sroa.9.4.i, %bb.bi ] ; 3 uses
  %.sroa.35.3.i = phi i32 [ 0, %.lr.ph.i21.i.i ], [ %.sroa.35.4.i, %bb.bi ] ; 4 uses
  %.sroa.46.3.i = phi i8 [ 0, %.lr.ph.i21.i.i ], [ %.sroa.46.4.i, %bb.bi ] ; 4 uses
  %indvars.iv.i23.i.i = phi i64 [ 0, %.lr.ph.i21.i.i ], [ %indvars.iv.next.i28.i.i, %bb.bi ] ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i23.i.i
  %i.hs = load i8, ptr %i.hr, align 1             ; 2 uses
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %indvars.iv.i23.i.i
  %i.hu = load i16, ptr %i.ht, align 2            ; 3 uses
  %i.hv = zext i8 %i.hs to i64                    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1             ; 3 uses
  %i.hy = icmp ne i8 %i.hx, 0
  %i.hz = icmp ult i16 %i.hu, 256
  %or.cond.i.i.i = select i1 %i.hy, i1 %i.hz, i1 false
  %i.ia = trunc nuw i64 %indvars.iv.i23.i.i to i32 ; 5 uses
  br i1 %or.cond.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i: ; preds = %bb.bd
  %i.ib = zext nneg i16 %i.hu to i64              ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1             ; 3 uses
  %.not49.i25.i.i = icmp eq i8 %i.id, 0
  br i1 %.not49.i25.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %bb.be

bb.be:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i
  %.not.i26.i.i = icmp eq i8 %i.hx, %i.id
  br i1 %.not.i26.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ie = call i32 @llvm.ucmp.i32.i8(i8 %i.hx, i8 %i.id)
  br label %.loopexit.i

bb.bg:                                            ; preds = %bb.be
  %i.if = zext i8 %i.hs to i16
  %.not41.i27.i.i = icmp ne i16 %i.hu, %i.if
  %i.ig = icmp eq i32 %.sroa.9.3.i, 0
  %or.cond335.i = select i1 %.not41.i27.i.i, i1 %i.ig, i1 false
  br i1 %or.cond335.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.hv
  %i.ii = load i8, ptr %i.ih, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.ib
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = call i32 @llvm.ucmp.i32.i8(i8 %i.ii, i8 %i.ik)
  %i.im = trunc nuw i8 %.sroa.46.3.i to i1
  %spec.select336.i = select i1 %i.im, i32 %.sroa.35.3.i, i32 %i.ia
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.9.4.i = phi i32 [ %.sroa.9.3.i, %bb.bg ], [ %i.il, %bb.bh ] ; 2 uses
  %.sroa.35.4.i = phi i32 [ %.sroa.35.3.i, %bb.bg ], [ %spec.select336.i, %bb.bh ] ; 2 uses
  %.sroa.46.4.i = phi i8 [ %.sroa.46.3.i, %bb.bg ], [ 1, %bb.bh ] ; 2 uses
  %indvars.iv.next.i28.i.i = add nuw nsw i64 %indvars.iv.i23.i.i, 1 ; 2 uses
  %exitcond.not.i29.i.i = icmp eq i64 %indvars.iv.next.i28.i.i, %wide.trip.count.i22.i.i
  br i1 %exitcond.not.i29.i.i, label %.loopexit.i, label %bb.bd, !llvm.loop !278

bb.bj:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit35.i
  br i1 %i.gw, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not56.i.i.i, label %.loopexit.i, label %.lr.ph.i36.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.bk
  %wide.trip.count.i37.i.i = zext i32 %.sroa.speculated.i to i64
  br label %bb.bl

bb.bl:                                            ; preds = %bb.br, %.lr.ph.i36.i.i
  %.sroa.9.6.i = phi i32 [ 0, %.lr.ph.i36.i.i ], [ %.sroa.9.7.i, %bb.br ] ; 3 uses
  %.sroa.35.6.i = phi i32 [ 0, %.lr.ph.i36.i.i ], [ %.sroa.35.7.i, %bb.br ] ; 5 uses
  %.sroa.46.6.i = phi i8 [ 0, %.lr.ph.i36.i.i ], [ %.sroa.46.7.i, %bb.br ] ; 5 uses
  %indvars.iv.i38.i.i = phi i64 [ 0, %.lr.ph.i36.i.i ], [ %indvars.iv.next.i46.i.i, %bb.br ] ; 4 uses
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv.i38.i.i
  %i.io = load i16, ptr %i.in, align 2            ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.i38.i.i
  %i.iq = load i8, ptr %i.ip, align 1             ; 2 uses
  %i.ir = icmp ult i16 %i.io, 256
  %i.is = trunc nuw i64 %indvars.iv.i38.i.i to i32 ; 6 uses
  br i1 %i.ir, label %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i: ; preds = %bb.bl
  %i.it = zext nneg i16 %i.io to i64              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1             ; 3 uses
  %.not49.i42.i.i = icmp eq i8 %i.iv, 0
  br i1 %.not49.i42.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i
  %i.iw = zext i8 %i.iq to i64                    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1             ; 3 uses
  %.not50.i43.i.i = icmp eq i8 %i.iy, 0
  br i1 %.not50.i43.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.not.i44.i.i = icmp eq i8 %i.iv, %i.iy
  br i1 %.not.i44.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iz = call i32 @llvm.ucmp.i32.i8(i8 %i.iv, i8 %i.iy)
  br label %.loopexit.i

bb.bp:                                            ; preds = %bb.bn
  %i.ja = zext i8 %i.iq to i16
  %.not41.i45.i.i = icmp ne i16 %i.io, %i.ja
  %i.jb = icmp eq i32 %.sroa.9.6.i, 0
  %or.cond337.i = select i1 %.not41.i45.i.i, i1 %i.jb, i1 false
  br i1 %or.cond337.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jc = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.it
  %i.jd = load i8, ptr %i.jc, align 1
  %i.je = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.iw
  %i.jf = load i8, ptr %i.je, align 1
  %i.jg = call i32 @llvm.ucmp.i32.i8(i8 %i.jd, i8 %i.jf)
  %i.jh = trunc nuw i8 %.sroa.46.6.i to i1
  %spec.select338.i = select i1 %i.jh, i32 %.sroa.35.6.i, i32 %i.is
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.9.7.i = phi i32 [ %.sroa.9.6.i, %bb.bp ], [ %i.jg, %bb.bq ] ; 2 uses
  %.sroa.35.7.i = phi i32 [ %.sroa.35.6.i, %bb.bp ], [ %spec.select338.i, %bb.bq ] ; 2 uses
  %.sroa.46.7.i = phi i8 [ %.sroa.46.6.i, %bb.bp ], [ 1, %bb.bq ] ; 2 uses
  %indvars.iv.next.i46.i.i = add nuw nsw i64 %indvars.iv.i38.i.i, 1 ; 2 uses
  %exitcond.not.i47.i.i = icmp eq i64 %indvars.iv.next.i46.i.i, %wide.trip.count.i37.i.i
  br i1 %exitcond.not.i47.i.i, label %.loopexit.i, label %bb.bl, !llvm.loop !279

bb.bs:                                            ; preds = %bb.bj
  br i1 %.not56.i.i.i, label %.loopexit.i, label %.lr.ph.i52.i.i

.lr.ph.i52.i.i:                                   ; preds = %bb.bs
  %wide.trip.count.i53.i.i = zext i32 %.sroa.speculated.i to i64
  br label %bb.bt

bb.bt:                                            ; preds = %bb.by, %.lr.ph.i52.i.i
  %.sroa.9.9.i = phi i32 [ 0, %.lr.ph.i52.i.i ], [ %.sroa.9.10.i, %bb.by ] ; 3 uses
  %.sroa.35.9.i = phi i32 [ 0, %.lr.ph.i52.i.i ], [ %.sroa.35.10.i, %bb.by ] ; 5 uses
  %.sroa.46.9.i = phi i8 [ 0, %.lr.ph.i52.i.i ], [ %.sroa.46.10.i, %bb.by ] ; 5 uses
  %indvars.iv.i54.i.i = phi i64 [ 0, %.lr.ph.i52.i.i ], [ %indvars.iv.next.i62.i.i, %bb.by ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %indvars.iv.i54.i.i
  %i.jj = load i16, ptr %i.ji, align 2            ; 3 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %indvars.iv.i54.i.i
  %i.jl = load i16, ptr %i.jk, align 2            ; 3 uses
  %i.jm = icmp ult i16 %i.jj, 256
  %i.jn = trunc nuw i64 %indvars.iv.i54.i.i to i32 ; 6 uses
  br i1 %i.jm, label %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i: ; preds = %bb.bt
  %i.jo = zext nneg i16 %i.jj to i64              ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1             ; 3 uses
  %i.jr = icmp ne i8 %i.jq, 0
  %i.js = icmp ult i16 %i.jl, 256
  %or.cond.i58.i.i = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %or.cond.i58.i.i, label %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i
  %i.jt = zext nneg i16 %i.jl to i64              ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1             ; 3 uses
  %.not50.i59.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not50.i59.i.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i
  %.not.i60.i.i = icmp eq i8 %i.jq, %i.jv
  br i1 %.not.i60.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jw = call i32 @llvm.ucmp.i32.i8(i8 %i.jq, i8 %i.jv)
  br label %.loopexit.i

bb.bw:                                            ; preds = %bb.bu
  %.not41.i61.i.i = icmp ne i16 %i.jj, %i.jl
  %i.jx = icmp eq i32 %.sroa.9.9.i, 0
  %or.cond339.i = select i1 %.not41.i61.i.i, i1 %i.jx, i1 false
  br i1 %or.cond339.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jy = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.jo
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL3E, i64 %i.jt
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = call i32 @llvm.ucmp.i32.i8(i8 %i.jz, i8 %i.kb)
  %i.kd = trunc nuw i8 %.sroa.46.9.i to i1
  %spec.select340.i = select i1 %i.kd, i32 %.sroa.35.9.i, i32 %i.jn
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.9.10.i = phi i32 [ %.sroa.9.9.i, %bb.bw ], [ %i.kc, %bb.bx ] ; 2 uses
  %.sroa.35.10.i = phi i32 [ %.sroa.35.9.i, %bb.bw ], [ %spec.select340.i, %bb.bx ] ; 2 uses
  %.sroa.46.10.i = phi i8 [ %.sroa.46.9.i, %bb.bw ], [ 1, %bb.bx ] ; 2 uses
  %indvars.iv.next.i62.i.i = add nuw nsw i64 %indvars.iv.i54.i.i, 1 ; 2 uses
  %exitcond.not.i63.i.i = icmp eq i64 %indvars.iv.next.i62.i.i, %wide.trip.count.i53.i.i
  br i1 %exitcond.not.i63.i.i, label %.loopexit.i, label %bb.bt, !llvm.loop !280

.loopexit.i:                                      ; preds = %bb.by, %bb.br, %bb.bi, %bb.bb, %bb.bv, %bb.bs, %bb.bo, %bb.bk, %bb.bf, %bb.bc, %bb.ay, %bb.au
  %.sroa.04.0.ph.i = phi i32 [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bi ], [ 0, %bb.bb ], [ %i.jw, %bb.bv ], [ 0, %bb.bk ], [ %i.iz, %bb.bo ], [ 0, %bb.bc ], [ %i.ie, %bb.bf ], [ 0, %bb.au ], [ %i.hj, %bb.ay ], [ 0, %bb.by ] ; 2 uses
  %.sroa.9.12.ph.i = phi i32 [ 0, %bb.bs ], [ %.sroa.9.7.i, %bb.br ], [ %.sroa.9.4.i, %bb.bi ], [ %.sroa.9.1.i, %bb.bb ], [ %.sroa.9.9.i, %bb.bv ], [ 0, %bb.bk ], [ %.sroa.9.6.i, %bb.bo ], [ 0, %bb.bc ], [ %.sroa.9.3.i, %bb.bf ], [ 0, %bb.au ], [ %.sroa.9.0.i, %bb.ay ], [ %.sroa.9.10.i, %bb.by ]
  %.sroa.18.0.ph.i = phi i32 [ 0, %bb.bs ], [ %.sroa.speculated.i, %bb.br ], [ %.sroa.speculated.i, %bb.bi ], [ %.sroa.speculated.i, %bb.bb ], [ %i.jn, %bb.bv ], [ 0, %bb.bk ], [ %i.is, %bb.bo ], [ 0, %bb.bc ], [ %i.ia, %bb.bf ], [ 0, %bb.au ], [ %i.hf, %bb.ay ], [ %.sroa.speculated.i, %bb.by ] ; 7 uses
  %.sroa.35.12.ph.i = phi i32 [ 0, %bb.bs ], [ %.sroa.35.7.i, %bb.br ], [ %.sroa.35.4.i, %bb.bi ], [ %.sroa.35.1.i, %bb.bb ], [ %i.jn, %bb.bv ], [ 0, %bb.bk ], [ %i.is, %bb.bo ], [ 0, %bb.bc ], [ %i.ia, %bb.bf ], [ 0, %bb.au ], [ %i.hf, %bb.ay ], [ %.sroa.35.10.i, %bb.by ] ; 6 uses
  %.sroa.46.12.ph.i = phi i8 [ 0, %bb.bs ], [ %.sroa.46.7.i, %bb.br ], [ %.sroa.46.4.i, %bb.bi ], [ %.sroa.46.1.i, %bb.bb ], [ 1, %bb.bv ], [ 0, %bb.bk ], [ 1, %bb.bo ], [ 0, %bb.bc ], [ 1, %bb.bf ], [ 0, %bb.au ], [ 1, %bb.ay ], [ %.sroa.46.10.i, %bb.by ] ; 6 uses
  %i.ke = add i32 %.sroa.18.0.ph.i, 1             ; 4 uses
  %.not.i36.i = icmp ult i32 %i.ke, %i.co
  br i1 %.not.i36.i, label %bb.bz, label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i

bb.bz:                                            ; preds = %.loopexit.i
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  br i1 %i.gs, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = zext i8 %i.kh to i16
  br label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.kf
  %i.kk = load i16, ptr %i.kj, align 2
  br label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i

_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i: ; preds = %bb.cb, %bb.ca
  %.0.i.i.i = phi i16 [ %i.ki, %bb.ca ], [ %i.kk, %bb.cb ]
  %isascii.i.i = icmp ult i16 %.0.i.i.i, 128
  br i1 %isascii.i.i, label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i, %.loopexit.i
  %.not.i37.i = icmp ult i32 %i.ke, %i.ct
  br i1 %.not.i37.i, label %bb.cc, label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.thread.i

bb.cc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i
  %i.kl = zext i32 %i.ke to i64                   ; 2 uses
  br i1 %i.gw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.km = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = zext i8 %i.kn to i16
  br label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i

bb.ce:                                            ; preds = %bb.cc
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.kl
  %i.kq = load i16, ptr %i.kp, align 2
  br label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i

_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i: ; preds = %bb.ce, %bb.cd
  %.0.i.i39.i = phi i16 [ %i.ko, %bb.cd ], [ %i.kq, %bb.ce ]
  %isascii.i40.i = icmp ult i16 %.0.i.i39.i, 128
  br i1 %isascii.i40.i, label %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.thread.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i
  %.not.i = icmp eq i32 %.sroa.04.0.ph.i, 0
  br i1 %.not.i, label %bb.cf, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit.thread

bb.cf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.thread.i
  %i.kr = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.co, i32 %i.ct) ; 2 uses
  %.not12.i = icmp eq i32 %i.co, %i.ct
  br i1 %.not12.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.cu, label %bb.ch, label %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i

bb.ch:                                            ; preds = %bb.cg
  %i.ks = zext i32 %i.ct to i64                   ; 2 uses
  br i1 %i.gs, label %_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i.i, label %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i

_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i.i: ; preds = %bb.ch
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = zext i8 %i.ku to i16
  br label %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i

_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i: ; preds = %bb.ch
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.gt, i64 %i.ks
  %i.kx = load i16, ptr %i.kw, align 2            ; 2 uses
  %i.ky = icmp ult i16 %i.kx, 256
  br i1 %i.ky, label %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i: ; preds = %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i.i
  %.0.i2.i.i = phi i16 [ %i.kv, %_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i.i ], [ %i.kx, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i ]
  %i.kz = zext nneg i16 %.0.i2.i.i to i64
  %i.la = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1
  %.not341.i = icmp eq i8 %i.lb, 0
  br i1 %.not341.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i

_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i: ; preds = %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i, %bb.cg
  %.not.i47.i = icmp ult i32 %i.co, %i.ct
  br i1 %.not.i47.i, label %bb.ci, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit.thread

bb.ci:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i
  %i.lc = zext i32 %.sroa.speculated.i to i64     ; 2 uses
  br i1 %i.gw, label %_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i50.i, label %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i

_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i50.i: ; preds = %bb.ci
  %i.ld = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = zext i8 %i.le to i16
  br label %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i

_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i: ; preds = %bb.ci
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.lc
  %i.lh = load i16, ptr %i.lg, align 2            ; 2 uses
  %i.li = icmp ult i16 %i.lh, 256
  br i1 %i.li, label %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit

_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i: ; preds = %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i50.i
  %.0.i2.i49.i = phi i16 [ %i.lf, %_ZNK2v88internal6String11FlatContent3GetEj.exit.thread.i50.i ], [ %i.lh, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i ]
  %i.lj = zext nneg i16 %.0.i2.i49.i to i64
  %i.lk = getelementptr inbounds nuw i8, ptr @_ZN2v88internal12_GLOBAL__N_119kCollationWeightsL1E, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1
  %.not342.i = icmp eq i8 %i.ll, 0
  br i1 %.not342.i, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, label %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit.thread

_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit.thread: ; preds = %bb.cf, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.thread.i
  %.sroa.052.1.i.ph = phi i32 [ %.sroa.04.0.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.thread.i ], [ %i.kr, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.thread.i ], [ %i.kr, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i ], [ %.sroa.9.12.ph.i, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread

_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit: ; preds = %bb.bt, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i, %bb.bl, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i, %bb.bm, %bb.bd, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i, %bb.av, %bb.aw, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i
  %.sroa.46.12.ph.sink.i = phi i8 [ %.sroa.46.12.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i ], [ %.sroa.46.3.i, %bb.bd ], [ %.sroa.46.12.ph.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i ], [ %.sroa.46.12.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i ], [ %.sroa.46.12.ph.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i ], [ %.sroa.46.12.ph.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i ], [ %.sroa.46.6.i, %bb.bl ], [ %.sroa.46.12.ph.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i ], [ %.sroa.46.0.i, %bb.av ], [ %.sroa.46.0.i, %bb.aw ], [ %.sroa.46.3.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i ], [ %.sroa.46.6.i, %bb.bm ], [ %.sroa.46.6.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i ], [ %.sroa.46.9.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i ], [ %.sroa.46.9.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i ], [ %.sroa.46.9.i, %bb.bt ]
  %.sroa.18.0.ph.sink.i = phi i32 [ %.sroa.18.0.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i ], [ %i.ia, %bb.bd ], [ %.sroa.18.0.ph.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i ], [ %.sroa.18.0.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i ], [ %.sroa.18.0.ph.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i ], [ %.sroa.18.0.ph.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i ], [ %i.is, %bb.bl ], [ %.sroa.18.0.ph.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i ], [ %i.hf, %bb.av ], [ %i.hf, %bb.aw ], [ %i.ia, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i ], [ %i.is, %bb.bm ], [ %i.is, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i ], [ %i.jn, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i ], [ %i.jn, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i ], [ %i.jn, %bb.bt ]
  %.sroa.35.12.ph.sink.i = phi i32 [ %.sroa.35.12.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i ], [ %.sroa.35.3.i, %bb.bd ], [ %.sroa.35.12.ph.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i46.i ], [ %.sroa.35.12.ph.i, %_ZN2v88internal12_GLOBAL__N_124CharIsAsciiOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit41.i ], [ %.sroa.35.12.ph.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit51.i ], [ %.sroa.35.12.ph.i, %_ZN2v88internal12_GLOBAL__N_131CharCanFastCompareOrOutOfBoundsERKNS0_6String11FlatContentEjj.exit.i ], [ %.sroa.35.6.i, %bb.bl ], [ %.sroa.35.12.ph.i, %_ZNK2v88internal6String11FlatContent3GetEj.exit.i48.i ], [ %.sroa.35.0.i, %bb.av ], [ %.sroa.35.0.i, %bb.aw ], [ %.sroa.35.3.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i.i.i ], [ %.sroa.35.6.i, %bb.bm ], [ %.sroa.35.6.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i41.i.i ], [ %.sroa.35.9.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit42.i.i.i ], [ %.sroa.35.9.i, %_ZN2v88internal12_GLOBAL__N_114CanFastCompareItEEbT_.exit.i57.i.i ], [ %.sroa.35.9.i, %bb.bt ]
  %i.lm = trunc nuw i8 %.sroa.46.12.ph.sink.i to i1
  %spec.select.i52.i = call i32 @llvm.usub.sat.i32(i32 %.sroa.18.0.ph.sink.i, i32 1)
  %storemerge.i53.i = select i1 %i.lm, i32 %.sroa.35.12.ph.sink.i, i32 %spec.select.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt8optionalIiEC2I16UCollationResultTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIiT_EESt16is_constructibleIiJS6_EESt14is_convertibleIS6_iES4_ISt5__or_IJS9_IiJRKS_IS6_EEES9_IiJRSE_EES9_IiJOSF_EES9_IiJOSE_EESB_ISG_iESB_ISI_iESB_ISK_iESB_ISM_iEEEEEEbE4typeELb1EEESM_.exit

_ZNSt8optionalIiEC2I16UCollationResultTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIiT_EESt16is_constructibleIiJS6_EESt14is_convertibleIS6_iES4_ISt5__or_IJS9_IiJRKS_IS6_EEES9_IiJRSE_EES9_IiJOSF_EES9_IiJOSE_EESB_ISG_iESB_ISI_iESB_ISK_iESB_ISM_iEEEEEEbE4typeELb1EEESM_.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %.0103 = phi i32 [ 0, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit ], [ %storemerge.i53.i, %_ZN2v88internal12_GLOBAL__N_121TryFastCompareStringsEPNS0_7IsolateERKN6icu_788CollatorENS0_12DirectHandleINS0_6StringEEESA_Pj.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.ln = call fastcc { ptr, i32 } @_ZN2v88internal12_GLOBAL__N_116ToICUStringPieceEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEj(ptr %.sroa.072.1, i32 noundef %.0103) ; 2 uses
  %.fca.0.extract5 = extractvalue { ptr, i32 } %i.ln, 0
  %.fca.1.extract6 = extractvalue { ptr, i32 } %i.ln, 1 ; 2 uses
  store ptr %.fca.0.extract5, ptr %10, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract6, ptr %.sroa.28.0..sroa_idx, align 8
  %.not = icmp eq i32 %.fca.1.extract6, 0
  br i1 %.not, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt8optionalIiEC2I16UCollationResultTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIiT_EESt16is_constructibleIiJS6_EESt14is_convertibleIS6_iES4_ISt5__or_IJS9_IiJRKS_IS6_EEES9_IiJRSE_EES9_IiJOSF_EES9_IiJOSE_EESB_ISG_iESB_ISI_iESB_ISK_iESB_ISM_iEEEEEEbE4typeELb1EEESM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.lo = call fastcc { ptr, i32 } @_ZN2v88internal12_GLOBAL__N_116ToICUStringPieceEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEj(ptr %.sroa.061.1, i32 noundef %.0103) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.lo, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.lo, 1 ; 2 uses
  store ptr %.fca.0.extract, ptr %11, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.2.0..sroa_idx, align 8
  %.not121 = icmp eq i32 %.fca.1.extract, 0
  br i1 %.not121, label %bb.ck, label %.thread117

.thread117:                                       ; preds = %bb.cj
  %i.lp = load ptr, ptr %1, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 104
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = call noundef i32 %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %_ZNSt8optionalIiEC2I16UCollationResultTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIiT_EESt16is_constructibleIiJS6_EESt14is_convertibleIS6_iES4_ISt5__or_IJS9_IiJRKS_IS6_EEES9_IiJRSE_EES9_IiJOSF_EES9_IiJOSE_EESB_ISG_iESB_ISI_iESB_ISK_iESB_ISM_iEEEEEEbE4typeELb1EEESM_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZN2v88internal4Intl18ToICUUnicodeStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEj(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %12, ptr poison, ptr %.sroa.072.1, i32 noundef %.0103)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @_ZN2v88internal4Intl18ToICUUnicodeStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEEj(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %13, ptr poison, ptr %.sroa.061.1, i32 noundef %.0103)
  %i.lt = load ptr, ptr %1, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 56
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = call noundef i32 %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cm
end_hunk_0
begin_hunk_1_@_ZN2v84base16LazyInstanceImplINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEENS0_32StaticallyAllocatedInstanceTraitIS7_EENS0_21DefaultConstructTraitIS7_EENS0_23ThreadSafeInitOnceTraitENS0_18LeakyInstanceTraitIS7_EEE12InitInstanceEPv:bb.a
  store ptr %i.eh, ptr %2, align 8
  store i64 %i.eg, ptr %i.i, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i64 16, ptr %i.j, align 8
  %i.el = load ptr, ptr %2, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i8 0, ptr %i.em, align 1
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i, %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i.i.i
  %i.en = load ptr, ptr %i.k, align 8             ; 6 uses
  %i.eo = load ptr, ptr %i.l, align 8
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 3 uses
  store ptr %i.ep, ptr %i.en, align 8
  %i.eq = load ptr, ptr %2, align 8               ; 2 uses
  %i.er = load i64, ptr %i.j, align 8             ; 8 uses
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %bb.n, label %._crit_edge.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.et = icmp slt i64 %i.er, 0
  br i1 %i.et, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #27
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.eu = add nuw i64 %i.er, 1                    ; 2 uses
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, !prof !35

bb.q:                                             ; preds = %bb.p
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.ew = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #29 ; 2 uses
  store ptr %i.ew, ptr %i.en, align 8
  store i64 %i.er, ptr %i.ep, align 8
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i, %bb.m
  %i.ex = phi ptr [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i ], [ %i.ep, %bb.m ] ; 3 uses
  switch i64 %i.er, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ey = load i8, ptr %i.eq, align 1
  store i8 %i.ey, ptr %i.ex, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr align 1 %i.eq, i64 %i.er, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %i.er, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.er
  store i8 0, ptr %i.fa, align 1
  %i.fb = load ptr, ptr %i.k, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  store ptr %i.fc, ptr %i.k, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread7.i.i.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.en, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i: ; preds = %bb.t, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i.i.i
  %i.fd = load ptr, ptr %2, align 8               ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.i
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i
  %i.ff = load i64, ptr %i.i, align 8
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.fh = call ptr @uenum_next_78(ptr noundef %i.g, ptr noundef null, ptr noundef nonnull %i.a) #25 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.b, !llvm.loop !523

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.a
  call void @uenum_close_78(ptr noundef %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN2v88internal4Intl14BuildLocaleSetERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEPKcSE_(ptr dead_on_unwind nonnull writable sret(%"class.std::set.593") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef null, ptr noundef nonnull @.str.53)
  %i.fi = load ptr, ptr %i.c, align 8
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.fi)
  store ptr null, ptr %i.c, align 8
  store ptr %i.b, ptr %i.d, align 8
  store ptr %i.b, ptr %i.e, align 8
  store i64 0, ptr %i.f, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8            ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fm = load i32, ptr %i.fl, align 8
  store i32 %i.fm, ptr %i.b, align 8
  store ptr %i.fk, ptr %i.c, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fo = load <2 x ptr>, ptr %i.fn, align 8
  store <2 x ptr> %i.fo, ptr %i.d, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.b, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fr = load i64, ptr %i.fq, align 8
  store i64 %i.fr, ptr %i.f, align 8
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i: ; preds = %bb.u, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.fs = load ptr, ptr %1, align 8               ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8            ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.fs, %i.fu
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ga, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.fs, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i ] ; 3 uses
  %i.fv = load ptr, ptr %.05.i.i.i.i.i.i, align 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fy = load i64, ptr %i.fw, align 8
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fz) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i5.i.i.i = icmp eq ptr %i.ga, %i.fu
  br i1 %.not.i.i.i5.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !225

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %1, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i
  %i.gb = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i ], [ %i.fs, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EEaSEOS9_.exit.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN2v84base32StaticallyAllocatedInstanceTraitINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEEE21InitStorageUsingTraitINS0_21DefaultConstructTraitIS7_EEEEvPA48_c.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #28
  br label %_ZN2v84base32StaticallyAllocatedInstanceTraitINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEEE21InitStorageUsingTraitINS0_21DefaultConstructTraitIS7_EEEEvPA48_c.exit

_ZN2v84base32StaticallyAllocatedInstanceTraitINS_8internal4Intl16AvailableLocalesINS2_12_GLOBAL__N_113CheckCalendarEEEE21InitStorageUsingTraitINS0_21DefaultConstructTraitIS7_EEEEvPA48_c.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8, i8) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { noreturn }
attributes #31 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!7 = distinct !{!7, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{ptr @_ZNK2v88internal21ExternalOneByteString8GetCharsEv}
!11 = !{ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!16 = distinct !{!16, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!19 = distinct !{!19, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!22 = distinct !{!22, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!23 = !{!24, !21}
!24 = distinct !{!24, !25, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!25 = distinct !{!25, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!26 = !{!27, !29, !21}
!27 = distinct !{!27, !28, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!28 = distinct !{!28, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!29 = distinct !{!29, !30, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!30 = distinct !{!30, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!31 = !{!32, !29, !21}
!32 = distinct !{!32, !33, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!33 = distinct !{!33, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!34 = !{!29, !21}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!37 = !{!38}
!38 = distinct !{!38, !39}
!39 = distinct !{!39, !"LVerDomain"}
!40 = !{!41}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !9, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = !{!"branch_weights", i32 4, i32 12}
!46 = distinct !{!46, !9, !43, !44}
!47 = distinct !{!47, !9, !43}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!50 = distinct !{!50, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!53 = distinct !{!53, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!56 = distinct !{!56, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!57 = distinct !{!57, !58, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!58 = distinct !{!58, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!59 = !{!60, !62, !57}
!60 = distinct !{!60, !61, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!61 = distinct !{!61, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!62 = distinct !{!62, !63, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!63 = distinct !{!63, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!64 = !{!65, !62, !57}
!65 = distinct !{!65, !66, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!66 = distinct !{!66, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!67 = !{!62, !57}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !9}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!75 = distinct !{!75, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!76 = distinct !{null, ptr @_ZNK2v88internal21ExternalOneByteString8GetCharsEv}
!77 = distinct !{null, ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv}
!78 = distinct !{!78, !9}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !9, !43, !44}
!85 = distinct !{!85, !9, !43, !44}
!86 = distinct !{!86, !9, !43}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!89 = distinct !{!89, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!92 = distinct !{!92, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!95 = distinct !{!95, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!96 = !{!97, !94}
!97 = distinct !{!97, !98, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!98 = distinct !{!98, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!99 = !{!100, !102, !94}
!100 = distinct !{!100, !101, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!101 = distinct !{!101, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!102 = distinct !{!102, !103, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!103 = distinct !{!103, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!104 = !{!105, !102, !94}
!105 = distinct !{!105, !106, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!106 = distinct !{!106, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!107 = !{ptr @u_strToLower_78, ptr @u_strToUpper_78}
!108 = !{!102, !94}
!109 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!112 = distinct !{!112, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!115 = distinct !{!115, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!118 = distinct !{!118, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!119 = distinct !{!119, !120, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!120 = distinct !{!120, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!121 = !{!122, !124, !119}
!122 = distinct !{!122, !123, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!123 = distinct !{!123, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!124 = distinct !{!124, !125, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!125 = distinct !{!125, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!126 = !{!127, !124, !119}
!127 = distinct !{!127, !128, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!128 = distinct !{!128, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!129 = !{!124, !119}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!132 = distinct !{!132, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!135 = distinct !{!135, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!138 = distinct !{!138, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!139 = !{!140, !137}
!140 = distinct !{!140, !141, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!141 = distinct !{!141, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!142 = !{!143, !145, !137}
!143 = distinct !{!143, !144, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!144 = distinct !{!144, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!145 = distinct !{!145, !146, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!146 = distinct !{!146, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!147 = !{!148, !145, !137}
!148 = distinct !{!148, !149, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!149 = distinct !{!149, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!150 = !{!145, !137}
!151 = !{!"branch_weights", i32 4000000, i32 2000, i32 0, i32 0}
!152 = distinct !{!152, !9}
end_hunk_1
