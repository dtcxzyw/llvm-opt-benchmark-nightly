Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/runtime-strings?download=true
inline.NumInlined: 1305
inline.NumDeleted: 458
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal21Runtime_StringToArrayEiPmPNS0_7IsolateE:_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.gx = add i64 %i.gw, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !alias.scope !70
  %i.gy = inttoptr i64 %i.gx to ptr               ; 10 uses
  %i.gz = load atomic volatile i64, ptr %i.gy acquire, align 8
  %i.ha = add i64 %i.gz, 11
  %i.hb = inttoptr i64 %i.ha to ptr
  %i.hc = load atomic volatile i16, ptr %i.hb monotonic, align 2
  %i.hd = and i16 %i.hc, 15
  switch i16 %i.hd, label %bb.aw [
    i16 8, label %bb.aj
    i16 0, label %bb.ak
    i16 9, label %bb.al
    i16 1, label %bb.al
    i16 10, label %bb.am
    i16 2, label %bb.aq
    i16 11, label %bb.au
    i16 3, label %bb.au
    i16 13, label %bb.av
    i16 5, label %bb.av
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %indvars.iv276
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %indvars.iv276
  %i.hk = load i16, ptr %i.hj, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.al:                                            ; preds = %bb.ai, %bb.ai
  %i.hl = trunc nuw nsw i64 %indvars.iv276 to i32
  %i.hm = call noundef zeroext i16 @_ZNK2v88internal10ConsString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.gy, i32 noundef %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.am:                                            ; preds = %bb.ai
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = inttoptr i64 %i.ho to ptr               ; 6 uses
  %i.hq = load atomic volatile i64, ptr %i.gy monotonic, align 8
  %i.hr = add i64 %i.hq, 11
  %i.hs = inttoptr i64 %i.hr to ptr
  %i.ht = load atomic volatile i16, ptr %i.hs monotonic, align 2
  %i.hu = and i16 %i.ht, 16
  %.not.i.i = icmp eq i16 %i.hu, 0
  br i1 %.not.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hv = load ptr, ptr %i.hp, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = call noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hp) #19, !inline_history !0
  br i1 %i.hy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #19
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.ib = load ptr, ptr %i.hp, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = call noundef ptr %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hp) #19, !inline_history !0
  br label %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.ao, %bb.ap
  %.0.i.i11 = phi ptr [ %i.ia, %bb.ao ], [ %i.ie, %bb.ap ]
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i.i11, i64 %indvars.iv276
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i16
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.aq:                                            ; preds = %bb.ai
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = inttoptr i64 %i.ij to ptr               ; 6 uses
  %i.il = load atomic volatile i64, ptr %i.gy monotonic, align 8
  %i.im = add i64 %i.il, 11
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = load atomic volatile i16, ptr %i.in monotonic, align 2
  %i.ip = and i16 %i.io, 16
  %.not.i.i12 = icmp eq i16 %i.ip, 0
  br i1 %.not.i.i12, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iq = load ptr, ptr %i.ik, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef zeroext i1 %i.is(ptr noundef nonnull align 8 dereferenceable(8) %i.ik) #19, !inline_history !1
  br i1 %i.it, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #19
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.iw = load ptr, ptr %i.ik, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 72
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef ptr %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #19, !inline_history !1
  br label %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit

_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.as, %bb.at
  %.0.i.i13 = phi ptr [ %i.iv, %bb.as ], [ %i.iz, %bb.at ]
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i13, i64 %indvars.iv276
  %i.jb = load i16, ptr %i.ja, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.au:                                            ; preds = %bb.ai, %bb.ai
  %i.jc = trunc nuw nsw i64 %indvars.iv276 to i32
  %i.jd = call noundef zeroext i16 @_ZNK2v88internal12SlicedString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(32) %i.gy, i32 noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.av:                                            ; preds = %bb.ai, %bb.ai
  %i.je = trunc nuw nsw i64 %indvars.iv276 to i32
  %i.jf = call noundef zeroext i16 @_ZNK2v88internal10ThinString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef nonnull align 4 dereferenceable(24) %i.gy, i32 noundef %i.je, ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit

bb.aw:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.au, %bb.av
  %.0.i2 = phi i16 [ %i.hh, %bb.aj ], [ %i.hk, %bb.ak ], [ %i.hm, %bb.al ], [ %i.ih, %_ZNK2v88internal21ExternalOneByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.jb, %_ZNK2v88internal21ExternalTwoByteString3GetEjRKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %i.jd, %bb.au ], [ %i.jf, %bb.av ]
  %i.jg = load i8, ptr %i.gv, align 8, !range !18, !noundef !19
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.ax, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit15

bb.ax:                                            ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit
  store i8 0, ptr %i.gv, align 8
  %i.ji = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i.i.i14, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit15, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ji) #19
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit15

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit15: ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIZNKS0_6String7GetImplEjRKNS0_31SharedStringAccessGuardIfNeededEEUlT_E_EEDaNS0_6TaggedIS3_EEOS7_.exit, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.jj = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1) %2, i16 noundef zeroext %.0.i2) #19
  %i.jk = load i64, ptr %i.ck, align 8
  %i.jl = add i64 %i.jk, -1                       ; 3 uses
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = load i64, ptr %i.jj, align 8            ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv276 ; 2 uses
  store atomic volatile i64 %i.jn, ptr %i.jp monotonic, align 8
  %i.jq = trunc i64 %i.jn to i1
  br i1 %i.jq, label %bb.az, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

bb.az:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit15
  %i.jr = or disjoint i64 %i.jl, 1                ; 2 uses
  %i.js = ptrtoint ptr %i.jp to i64               ; 2 uses
  %i.jt = and i64 %i.jl, -262144
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load i64, ptr %i.ju, align 262144       ; 2 uses
  %i.jw = and i64 %i.jv, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.jw, 0
  %i.jx = and i64 %i.jv, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not38.i.i.i.i.i, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.jy = and i64 %i.jn, -262144
  %i.jz = inttoptr i64 %i.jy to ptr
  %.sroa.0.0.copyload.i28.i.i.i.i.i = load i64, ptr %i.jz, align 262144
  %i.ka = and i64 %.sroa.0.0.copyload.i28.i.i.i.i.i, 25
  %.not39.i.i.i.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not39.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.jr, i64 noundef %i.js, i64 %i.jn) #19
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, label %bb.bd, !prof !17

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.jr, i64 %i.js, i64 %i.jn) #19
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit: ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit15, %bb.bc, %bb.bd
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %.loopexit, label %bb.ai, !llvm.loop !61

.loopexit:                                        ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit, %.critedge31.i, %._crit_edge
  %i.kb = load i64, ptr %i.ck, align 8
  %i.kc = add i64 %i.kb, -1
  %i.kd = inttoptr i64 %i.kc to ptr
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  %7 = load i32, ptr %i.ke, align 4
  %i.kf = call ptr @_ZN2v88internal7Factory22NewJSArrayWithElementsENS0_12DirectHandleINS0_14FixedArrayBaseEEENS0_12ElementsKindEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %i.ck, i8 noundef zeroext 3, i32 noundef %7, i8 noundef zeroext 0) #19
  %i.kg = load i64, ptr %i.kf, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.kh = load i32, ptr %i.e, align 8
  %i.ki = add nsw i32 %i.kh, -1
  store i32 %i.ki, ptr %i.e, align 8
  %i.kj = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.kj, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.be, !prof !17

bb.be:                                            ; preds = %.loopexit
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.be, %.loopexit
  ret i64 %i.kg
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal22Runtime_StringLessThanEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !71 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !16

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef nonnull %2, ptr %1, ptr %i.j) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal22ComparisonResultToBoolE9OperationNS0_16ComparisonResultE(i8 noundef zeroext 18, i32 noundef %i.k) #19
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = add i64 %i.n, -55464
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.03.0.in.v.i = select i1 %i.m, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.b
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal29Runtime_StringLessThanOrEqualEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !72 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !16

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef nonnull %2, ptr %1, ptr %i.j) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal22ComparisonResultToBoolE9OperationNS0_16ComparisonResultE(i8 noundef zeroext 19, i32 noundef %i.k) #19
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = add i64 %i.n, -55464
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.03.0.in.v.i = select i1 %i.m, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.b
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal25Runtime_StringGreaterThanEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !73 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !16

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef nonnull %2, ptr %1, ptr %i.j) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal22ComparisonResultToBoolE9OperationNS0_16ComparisonResultE(i8 noundef zeroext 20, i32 noundef %i.k) #19
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = add i64 %i.n, -55464
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.03.0.in.v.i = select i1 %i.m, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %i.c, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #19
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.c, %bb.b
  ret i64 %.sroa.03.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal32Runtime_StringGreaterThanOrEqualEiPmPNS0_7IsolateE(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !guid !74 {
_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.a, label %bb.b, !prof !16

bb.a:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %_ZNK2v88internal9ArgumentsILNS0_13ArgumentsTypeE0EE17address_of_arg_atEi.exit
  %i.h = ptrtoint ptr %1 to i64
  %i.i = add i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call noundef i32 @_ZN2v88internal6String7CompareEPNS0_7IsolateENS0_12DirectHandleIS1_EES5_(ptr noundef nonnull %2, ptr %1, ptr %i.j) #19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal22ComparisonResultToBoolE9OperationNS0_16ComparisonResultE(i8 noundef zeroext 21, i32 noundef %i.k) #19
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = add i64 %i.n, -55464
  %i.p = inttoptr i64 %i.o to ptr
  %.sroa.03.0.in.v.i = select i1 %i.m, i64 672, i64 680
  %.sroa.03.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.03.0.in.v.i
  %.sroa.03.0.i = load i64, ptr %.sroa.03.0.in.i, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.e, align 8
  %i.s = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.s, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.c, !prof !17
end_hunk_0
